require "sh_button/version"
require "sh_button/config"
require "sh_button/helper"
require 'sh_button/engine'

I18n.load_path += Dir.glob( File.dirname(__FILE__) + "lib/locales/*.{rb,yml}" )

module ShButton
end

ActiveSupport.on_load(:action_view) do
  include ShButton::Helper
end