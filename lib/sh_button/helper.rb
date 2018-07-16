module ShButton
  module Helper

    SH_BUTTON_NOT_POPUP = %w(email sms viber)

    def sh_button_tag(title = "", opts = {})
      opts[:allow_sites] ||= ShButton.config.allow_sites

      html = []
      html << "<div class='sh-button'>"

      opts[:allow_sites].each do |site|
        link_title = t "sh_button.share_to", name: t("sh_button.#{site.downcase}")

        anchor_classes = "sh-button-item sh-button-#{site}"
        anchor_classes << ' sh-button-popup' unless SH_BUTTON_NOT_POPUP.include? site

        html << link_to(tag(:span, class: "sh-button-icon-#{site}"),share_link(site, title, opts[:url], opts[:image]),
                        class: anchor_classes, title: link_title,)
      end
      html << "</div>"
      raw html.join("\n")
    end

    private

    def share_link(site, title, url, img)
      case site
      when 'email'
        "mailto:?to=&body=#{url},&subject=#{title}"
      when 'twitter'
        "https://twitter.com/intent/tweet?url=#{url}&text=#{title}"
      when 'facebook'
        "http://www.facebook.com/sharer/sharer.php?u=#{url}"
      when 'vkontakte'
        "https://vk.com/share.php?url=#{url}&title=#{title}&image=#{img}"
      when 'odnoklassniki'
        "https://connect.ok.ru/offer?url=#{url}&title=#{title}&imageUrl=#{img}"
      when 'whatsapp'
        "https://wa.me/?text=#{url}"
      when 'viber'
        "viber://forward?text=#{url}"
      when 'sms'
        "sms:?body=#{title} #{url}"
      end
    end
  end
end