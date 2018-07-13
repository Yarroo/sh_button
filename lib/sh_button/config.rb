module ShButton
  class << self
    attr_accessor :config
    def configure
      yield self.config ||= Config.new
    end
  end

  class Config
    # enable social sites to share,
    # * site support:
    # - sms
    # - email
    # - twitter
    # - facebook
    # - vkontakte
    # - odnoklassniki
    # - whatsapp
    # - viber
    attr_accessor :allow_sites

    def initialize
    end
  end
end
