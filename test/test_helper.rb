$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
require 'rubygems'

require 'test/unit'
require 'action_controller'
require 'action_controller/test_case'

require File.join(File.dirname(__FILE__), '..', 'init.rb')

ActionController::Routing::Routes.draw do |map|
  match "/index" => "ekuseru#index"
end

class ActiveSupport::TestCase
end

module ActionController
  class TestRequest < ActionDispatch::TestRequest
    def flash
      {}
    end
  end
end

class Hash
  def sweep
  end
end
