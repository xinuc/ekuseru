module Ekuseru
  module TemplateHandler
    class Eku < ActionView::TemplateHandler
      include ActionView::TemplateHandlers::Compilable
      
      def compile template
        "_ekuseru_setup\n" +
          "xls = Spreadsheet::Workbook.new\n" +
          "#{template.source}\n" +
          "@_ekuseru_options.set_disposition(__filename ||= nil)\n" +
          "xls.render\n"
      end
    end
  end
end