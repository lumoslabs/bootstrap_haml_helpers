# lumoslabs/bootstrap_haml_helpers

HAML wrappers for [Twitter Bootstrap](http://getbootstrap.com/2.3.2) components.

[![Build Status](https://travis-ci.org/lumoslabs/bootstrap_haml_helpers.svg)](https://travis-ci.org/lumoslabs/bootstrap_haml_helpers)
[![Gem Version](https://badge.fury.io/rb/bootstrap_haml_helpers.svg)](http://badge.fury.io/rb/bootstrap_haml_helpers)

Integration
----
To integrate our gem into your application, follow these steps:

1. Add it to your gemfile, gem 'bootstrap_haml_helpers'
2. bundle
3. Add the following line to your main SASS file (typically application.css.sass): `//= require bootstrap_haml_helpers`
4. Add the following to your main JS file (typically application.js): `//= require bootstrap_haml_helpers`

Versioning
----
We follow the same version as Twitter Bootstrap (currently 2.3.2). Any patches will fall as a sub-version of the existing patch number (e.g. 2.3.2.1).
