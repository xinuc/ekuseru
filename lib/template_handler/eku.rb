module Ekuseru
  module TemplateHandler
    class Eku < ActionView::TemplateHandler
      include ActionView::TemplateHandlers::Compilable
      
      def compile template
        %{
          _ekuseru_setup
          xls = Spreadsheet::Workbook.new
          #{template.source}
          @_ekuseru_options.set_disposition(__filename ||= nil)
          io = StringIO.new
          xls.write(io)
          io.rewind
          io.read
        }
      end
    end
  end
end