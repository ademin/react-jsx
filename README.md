[![Gem Version](https://badge.fury.io/rb/react-jsx.png)](http://badge.fury.io/rb/react-jsx) [![Build Status](https://secure.travis-ci.org/ademin/react-jsx.png)](http://travis-ci.org/ademin/react-jsx) [![Code Climate](https://codeclimate.com/github/ademin/react-jsx.png)](https://codeclimate.com/github/ademin/react-jsx) [![Coverage Status](https://coveralls.io/repos/ademin/react-jsx/badge.png)](https://coveralls.io/r/ademin/react-jsx) [![Dependency Status](https://gemnasium.com/ademin/react-jsx.png)](https://gemnasium.com/ademin/react-jsx)

***

# Ruby React JSX Compiler

Ruby React JSX Compiler is a bridge to the official React JSX compiler

(Please, refer to http://facebook.github.io/react/docs/getting-started.html for more details)

## Installation

Run the command below to install the gem:

    gem install react-jsx

or add the line below to your Gemfile:

    gem 'react-jsx', require: 'react/jsx'

## Usage

    require 'react/jsx'

    # Some JSX code
    jsx = <<-EOF
      /** @jsx React.DOM */
      React.renderComponent(
        <h1>Hello, world!</h1>,
        document.getElementById('example')
      );
    EOF

    js = React::JSX.compile(jsx)

## React sources

This library depends on the `react-source` gem which is updated any time a new version of React is released.

(Please, refer to https://github.com/facebook/react for more details) 

# License

Copyright &#169; 2013 Alexey Demin, MIT License (www.opensource.org/licenses/mit-license.php)
