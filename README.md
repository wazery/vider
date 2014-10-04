# Vider [![endorse](http://api.coderwall.com/wazery/endorsecount.png)](http://coderwall.com/wazery)

A Ruby gem to wrap the functionalities of the Vide jQuery plugin.

[![Build Status](https://travis-ci.org/wazery/vider.svg)](https://travis-ci.org/wazery/vider)
[![Code Climate](https://codeclimate.com/github/wazery/vider/badges/gpa.svg)](https://codeclimate.com/github/wazery/vider)
[![License](http://img.shields.io/license/MIT.png?color=green)](http://opensource.org/licenses/MIT)
[![Support Vider Gem](http://img.shields.io/gittip/wbotelhos.svg)](https://www.gittip.com/wazery "Git Tip")


## TODO

1. Write a RSpec tests for this gem
2. :wq

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vider'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vider

Add the required JS file to your `app/assets/javascripts/application.js`

    //= require jquery.vide
    
## Notes

* All modern desktop browsers are supported.
* IE9+
* iOS plays video from a browser only in the native player. So video for iOS is disabled, only fullscreen poster will be used.
* Some Android devices play video, some not — go figure. So video for Android is disabled, only fullscreen poster will be used.

## Usage

Prepare your video in several formats like '.webm', '.mp4' for cross browser compatability, also add a poster with `.jpg`, `.png` or `.gif` extension:

```
path/
├── to/
│   ├── video.mp4
│   ├── video.ogv
│   ├── video.webm
│   └── video.jpg
```

### Vider Tag

You can use the Vider view helpers to add video elements to your Rails views.

```erb
<%= vider_tag 'path/to/video', position: '100% 100%' %>
```

I recommend the video to be in the assets directory like so for example: `'assets/video.mp4'` Note that video.mp4 will be under `videos` directory

## Options

Below is a complete list of options, and matching default values:

1. **volume** default is *1*,
2. **playbackRate** default is *1*
3. **muted** default is *true*
4. **loop** default is *true*
5. **autoplay** default is  *true*
6. **position** default is *"50% 50%"*
7. **posterType** default is *"detect"*

## Contributing

1. Fork it ( https://github.com/wazery/vider/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License
The MIT License (MIT)

```
Copyright (c) 2014 Islam Wazery, http://www.whitespace.company

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
  ```
