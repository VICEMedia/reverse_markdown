module ReverseMarkdown
  module Converters
    class Em < Base
      def convert(node)
        content = treat_children(node)
        if content.strip.empty?
          content
        else
          "#{content[/^\s*/]}_#{content.strip}_#{content[/\s*$/]}"
        end
      end
    end

    register :em, Em.new
    register :i,  Em.new
  end
end
