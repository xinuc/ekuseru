module Ekuseru
  module TemplateHandler
    class Options

      def initialize(controller)
        @controller = controller
        set_content_type
        set_disposition
      end

      def set_content_type
        @controller.response.content_type ||= Mime::XLS
      end

      def set_disposition
        #      filename = options[:filename] ? "filename=#{options[:filename]}" : nil
        @controller.headers["Content-Disposition"] = ["attachment", nil].compact.join(';')
      end
      
    end
  end
end