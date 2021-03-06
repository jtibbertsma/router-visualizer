# Rails Router Visualizer

This gem allows you to see a visualization of the router of your Rails 4 application.

This visualization is generated by the Rails Journey router. It was written by [tenderlove](http://tenderlove.github.io) back before Journey was incorporated into Rails. Calling `Rails.application.routes.router.visualizer` from your application will return the text of an html file titled "Routes FSM with NFA simulation". This gem just wraps this functionality into a simple engine that gets mounted by the `visualize` method.

The visualizer also shows a list of all of your application's routes. It doesn't list the REST methods associated with the routes.

## Installation

Add the gem to your app's development environment and run the `bundle` command to install it.

```ruby
gem 'router-visualizer', group: :development
```

## Requirements

For this to work, you need the `dot` command. This command is used for drawing directed graphs; this is what Rails uses to generate the visualization of the router NFA.

If you're on OS X, you can do

```bash
$ brew install gprof2dot
```

## Usage

```ruby
# config/routes.rb

Rails.application.routes.draw do
  # ...
  visualize
  # ...
end
```

Then you can navigate to `localhost:3000/routes` to see the visualization.

You can mount the visualizer at whatever route you want:

```ruby
Rails.application.routes.draw do
  # ...
  visualize at: 'nfa_visualization'
  # ...
end
```

By default, the visualization route will only be defined in development. If for some reason you want the route to be defined in other environments, you can use the `groups` option:

```ruby
Rails.application.routes.draw do
  # ...
  visualize groups: ['development', 'staging']
  # ...
end
```

## What is the point of this?

I want to learn to write gems and rails engines. This is a simple starting point.

## License

Copyright (c) 2015 Joseph Tibbertsma

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
