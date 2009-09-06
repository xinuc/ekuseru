$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
require 'rubygems'

require 'test/unit'
require 'action_controller'

require 'action_controller/test_case'
require File.join(File.dirname(__FILE__), '..', 'init.rb')


ActionController::Routing::Routes.reload rescue nil
