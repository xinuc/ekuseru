require File.join(File.dirname(__FILE__), 'spec_helper')
require 'ekuseru'

describe ActionController do
  before(:each) do
    @action_view = ActionView::Base.new
    @action_controller = ActionController::Base.new
    @action_view.controller = @action_controller
    @handler = Ekuseru::TemplateHandler::Eku.new(@action_view)
    @action_controller.response = ActionController::Response.new
    @action_controller.headers ||= {}
    @action_view.send :_ekuseru_setup
  end

  it "should has xls content-type" do
    @action_controller.response.content_type.should == Mime::XLS
  end

  it "should has right disposition" do
    (@action_view.instance_variable_get "@_ekuseru_options").set_disposition("something.xls")
    @action_controller.headers["Content-Disposition"].should == 'attachment;filename="something.xls"'
  end

end

