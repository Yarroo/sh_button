# SH_Button

This is a gem to helper you quick create a share feature in you Rails apps.

# Sites list

* Twitter
* Facebook
* Vkontakte
* Odnoklassniki
* Whatsapp
* Viber

## Install

In your `Gemfile`:

```ruby
gem 'sh_button'
```

And install it:

```bash
$ bundle install
$ rails generate sh_button:install
```

## Configure 

You can config `config/initializers/sh_button.rb` to choose which site do you want to use:

```ruby
SocialShareButton.configure do |config|
  config.allow_sites = %w(twitter facebook vkontakte)
end
```

## Usage

You need add require css,js file in your app assets files:

`app/assets/javascripts/application.coffee`

```
#= require sh-button
```

`app/assets/stylesheets/application.scss`

```
*= require sh-button
```

In Rails 4.1.6 , use `@import` to require files:

`app/assets/stylesheets/application.css.scss`

```
@import "sh-button";
```

Then you can use `social_share_button_tag` helper in views, for example `app/views/posts/show.html.erb`

```erb
<%= sh_button_tag(@post.title) %>
```

To specify sites at runtime:

```erb
<%= sh_button_tag(@post.title, :allow_sites => %w(twitter facebook)) %>
```

And you can custom rel attribute:

```erb
<%= sh_button_tag(@post.title, :rel => "twipsy") %>
```

You can also specify the URL that it links to:

```erb
<%= sh_button_tag(@post.title, :url => "http://myapp.com/foo/bar") %>
```

```erb
<%= sh_button_tag(@post.title, :url => "http://myapp.com/foo/bar", :image => "http://foo.bar/images/a.jpg") %>
```

### Testing from localhost will not work

You will need to test from a live site or Facebook will reject it; localhost will not work.


## How to change icon size?

Yes, you can override social-share-button base css to change the icon size, margin, and form.

In you `app/assets/stylesheets/application.scss`:

```scss
.sh-button .sh-button-item {
  border-radius: 10px;
  height: 30px;
  width: 30px;
  margin-right: 6px;
}
```
