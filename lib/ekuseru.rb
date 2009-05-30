require 'workbook/workbook'
require 'template_handler/eks'
require 'template_handler/options'

class ActionView::Base
  private
  def setup
    @ekuseru_options = Ekuseru::TemplateHandler::Options.new controller
  end
end