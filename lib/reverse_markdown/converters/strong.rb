module ReverseMarkdown
  module Converters
    class Strong < Base
      def convert(node)
        content = treat_children(node)
        if content.strip.empty?
          content
        else
          "#{content[/^\s*/]}**#{content.strip}**#{content[/\s*$/]}"
        end
      end
    end

    register :strong, Strong.new
    register :b,      Strong.new
  end
end
