Instalation
===========
Include `gem 'color-logger'` to youre Gemfile and run `bundle`.

Usage
=====
Open Ruby console (`irb`) and try following:

    require 'rubygems'
    require 'color-logger'
    {:foo => 'bar'}.cputs :baz
    [1,'a',Time.now].cputs
    Hash.new.clog
    [{:hash => :test}].clog 'tag example'

Also `.cputs` = `.cdump` and `.clog` = `.cdebug` but for Rails default logger

If you like [Cucumber](http://cukes.info/), try run `rails console` under youre project dir and execute something like this

    User.first.to_table