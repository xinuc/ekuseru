require 'action_dispatch/http/mime_type'
Mime::Type.register "application/vnd.ms-excel", :xls

require 'ekuseru'
ActionView::Template.register_template_handler 'eku', Ekuseru::TemplateHandler::Eku

