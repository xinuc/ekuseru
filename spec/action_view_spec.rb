require File.join(File.dirname(__FILE__), 'spec_helper')
require 'ekuseru'

describe ActionView::Base do

  it "should reponds to _ekuseru_setup" do
    ActionView::Base.new.private_methods.should include("_ekuseru_setup")
  end
end

