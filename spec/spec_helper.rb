$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
require 'rubygems'
require 'action_view'
require 'action_controller'
require 'spreadsheet'
require 'spec'

module Mime
  XLS = "something"
end