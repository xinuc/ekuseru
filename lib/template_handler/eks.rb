module Ekuseru
  module TemplateHandler
    class Eks < ActionView::TemplateHandler
      include ActionView::TemplateHandlers::Compilable
      
      def compile(template)
        "setup\n" +
          "xls = Spreadsheet::Workbook.new\n" +
          "#{template.source}\n" +
          "xls.render;"
      end
    end
  end
end


