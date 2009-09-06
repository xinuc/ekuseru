require File.join(File.dirname(__FILE__), 'test_helper')

class EkuseruController < ActionController::Base
  append_view_path File.join(File.dirname(__FILE__), 'fixtures')
  
  def index() respond_to{ |format| format.xls } end
  def rescue_action(e) raise e end
end

class EkuseruControllerTest < ActionController::TestCase
  def setup
    @request.format = "xls"
    get :index
  end
  
  test "response is success" do
    assert_response :success
  end
  
  test "content type is xls" do
    assert_equal Mime::XLS, @response.content_type
  end
  
  test "content disposition should be set" do
    assert_equal 'attachment;filename="Products Catalog.xls"', @response.headers['Content-Disposition']
  end
  
  test "the response is an xls document" do
    assert_nothing_raised do
      Spreadsheet.open StringIO.new(@response.body)
    end
  end
  
  test "the response has the correct data" do
    spreadsheet = Spreadsheet.open StringIO.new(@response.body)
    assert_equal 42, spreadsheet.worksheet(0)[0,0]
  end
end

