require File.join(File.dirname(__FILE__), 'spec_helper')
require 'ekuseru'

describe Spreadsheet::Workbook do
  
  it "should responds to render" do
    Spreadsheet::Workbook.new.should respond_to(:render)
  end
end

