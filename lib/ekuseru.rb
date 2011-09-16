require 'action_dispatch/http/mime_type'
Mime::Type.register "application/vnd.ms-excel", :xls

require 'spreadsheet'
require 'template_handler/eku'
require 'template_handler/options'

ActionView::Template.register_template_handler :eku, Ekuseru::TemplateHandler::Eku.new

class ActionView::Base
  private
  def _ekuseru_setup
    @_ekuseru_options = Ekuseru::TemplateHandler::Options.new controller
  end
end
