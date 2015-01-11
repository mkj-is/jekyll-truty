
module Kramdown

  module Options
      define(:truty_lang, Symbol, :general, <<EOF)
Sets the default language for highlighting code blocks
If no language is set for a code block, the default language is used
instead. The value has to be one of the languages supported by pygments
or nil if no default language should be used.
Default: :general
Used by: TrutyHtml converter
EOF
  end

  module Converter
    class TrutyHtml < Html

      begin
        require 'truty'
      rescue LoadError
        STDERR.puts 'You are missing a library required for typography improvements. Please run:'
        STDERR.puts '  $ [sudo] gem install truty'
        raise FatalException.new("Missing dependency: Truty")
      end

      begin
        require 'nokogiri'
      rescue LoadError
        STDERR.puts 'You are missing a library required for HTML parsing. Please run:'
        STDERR.puts '  $ [sudo] gem install nokogiri'
        raise FatalException.new("Missing dependency: Nokogiri")
      end

      def convert_text(el, indent)
        node = Nokogiri::HTML.fragment(el.value)
        traverse_html(node, @options[:truty_lang])
        node.to_html(:indent => 0)
      end

      def traverse_html(node, lang = :english)
        node.children.each do |child|
          if child.text? && child.text.strip.length > 0 then
            child.content = Truty.convert(child.inner_text, lang)
          else
            traverse_html(child)
          end
        end
      end
    end
  end
end
