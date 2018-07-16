
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sh_button/version"

Gem::Specification.new do |spec|
  spec.name          = "sh_button"
  spec.version       = ShButton::VERSION
  spec.authors       = ["Sergey Vershinin"]
  spec.email         = ["accountwm@gmail.com"]
  spec.summary       = %q{Helper for add social share feature in your Rails app. Twitter, Facebook, Vkontakte, Odnoklassniki, WhatsApp, Viber}
  spec.description   = %q{Helper for add social share feature in your Rails app. Twitter, Facebook, Vkontakte, Odnoklassniki, WhatsApp, Viber}
  spec.homepage      = "https://github.com/Yarroo/sh_button"
  spec.license       = "MIT"

  spec.files         = Dir.glob('lib/**/*') + %w(README.md CHANGELOG.md MIT-LICENSE)

  # specify any dependencies here; for example:
  spec.files        = Dir.glob("{bin,lib,config,app/assets/javascripts,app/assets/stylesheets,app/assets/images}/**/*")
  spec.files       += %w(README.md)
  spec.add_development_dependency "rails"
  spec.add_runtime_dependency "coffee-rails"
end
