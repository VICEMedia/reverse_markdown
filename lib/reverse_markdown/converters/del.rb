module ReverseMarkdown
  module Converters
    class Del < Base
      def convert(node)
        content = treat_children(node)
        if disabled? || content.strip.empty?
          content
        else
          "~~#{content}~~"
        end
      end

      def enabled?
        ReverseMarkdown.config.github_flavored
      end

      def disabled?
        !enabled?
      end
    end

    register :strike, Del.new
    register :del,    Del.new
  end
end
