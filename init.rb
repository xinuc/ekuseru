require 'ekuseru'

Mime::Type.register "application/vnd.ms-excel", :xls
ActionView::Template.register_template_handler 'eks', Ekuseru::TemplateHandler::Eks