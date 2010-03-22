require 'action_dispatch/http/mime_type'
Mime::Type.register "application/vnd.ms-excel", :xls

require 'spreadsheet'
require 'template_handler/eku'
require 'template_handler/options'
require 'action_view/base'

require 'action_view/template/handler'

ActionView::Template.register_template_handler 'eku', Ekuseru::TemplateHandler::Eku

class ActionView::Base
  private
  def _ekuseru_setup
    @_ekuseru_options = Ekuseru::TemplateHandler::Options.new controller
  end
end
