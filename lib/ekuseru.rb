require 'spreadsheet'
require 'template_handler/eku'
require 'template_handler/options'
require 'action_view/base'

class ActionView::Base
  private
  def _ekuseru_setup
    @_ekuseru_options = Ekuseru::TemplateHandler::Options.new controller
  end
end
