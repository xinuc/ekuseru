require 'action_view'

module Ekuseru
  module TemplateHandler
    class Eku
      def call template
        %{
          _ekuseru_setup
          xls = Spreadsheet::Workbook.new
          #{template.source}
          @_ekuseru_options.set_disposition(__filename ||= nil)
          io = StringIO.new
          xls.write(io)
          io.rewind
          string = io.read
          string.respond_to?(:force_encoding) ?
            string.force_encoding(Encoding::ASCII_8BIT) : string
        }
      end
    end
  end
end
