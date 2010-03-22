require File.join(File.dirname(__FILE__), 'test_helper')

class EkuseruController < ActionController::Base
  append_view_path File.join(File.dirname(__FILE__), 'fixtures')
  respond_to :xls

  def index
    @something = 42
    respond_with @something
  end
end

class EkuseruControllerTest < ActionController::TestCase
  def setup
    get :index, :format => "xls"
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
