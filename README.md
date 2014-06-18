# Paperclip Gem Integration for Redactor.js & Spree

Image upload management provided by `paperclip gem` for the Redactor WYSIWYG editor


## Installation

In your `Gemfile`, add the following dependencies:

    gem 'redactor-paperclip', github: 'DynamoMTL/redactor-paperclip'

Run:

    $ bundle install


And then run:

    rails g redactor:install


Finally run:

    rake db:migrate


## Usage

Add paperclip support for the asset path (`config/initializers/paperclip.rb`)

    RedactorAsset.attachment_definitions[:asset][:path] = ':class/:attachment/:id/:style/:filename'

Add to your css file (usually `vendor/assets/stylesheets/spree/backend/all.css`)

    *= require redactor-rails
    *= redactor-rails/plugins

And to your javascript file (usually `vendor/assets/javascripts/spree/backend/all.js`)

    //= require redactor-rails
    //= require redactor-rails/plugins

## Initialize Redactor

Add the **redactor** class to any textarea

    f.text_area :description, {:class => 'redactor'}

See the [Redactor Documentation](http://redactorjs.com/docs/settings/) for a full list of configuration options.


## License
Redactor has [3 different licenses](http://redactorjs.com/download/) for commercial use.
For details please see [License Agreement](http://redactorjs.com/download/).


## Special Thanks
[SammyLin ( redactor-rails )](https://github.com/SammyLin/redactor-rails)
