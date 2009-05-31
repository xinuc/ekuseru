require 'ekuseru'

Mime::Type.register "application/vnd.ms-excel", :xls
ActionView::Template.register_template_handler 'eku', Ekuseru::TemplateHandler::Eku