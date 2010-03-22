require 'action_view/template/handler'

module Ekuseru
  module TemplateHandler
    class Eku < ActionView::Template::Handler
      include ActionView::Template::Handlers::Compilable

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
