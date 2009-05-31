module Ekuseru
  module TemplateHandler
    class Options

      def initialize controller
        @controller = controller
        @controller.response.content_type ||= Mime::XLS
      end

      def set_disposition(filename = nil)
        @controller.headers["Content-Disposition"] = ["attachment", filename ? "filename=\"#{filename}\"" : nil].compact.join(';')
      end
      
    end
  end
end