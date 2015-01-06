
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

      def convert_text(el, indent)
        Truty.convert(el.value, :html, @options[:truty_lang])
      end
    end
  end
end
