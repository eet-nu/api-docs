require 'redcarpet'
require 'tilt/markdown'
require 'coderay'

class AwesomeMarkdown < Redcarpet::Render::HTML
  def header(text, header_level)
    slug = text.downcase.gsub(/[^a-z]+/, '_')
    "<h#{header_level} id='#{slug}'>#{text}</h#{header_level}>"
  end
  def block_code(code, language)
    if language
      '<pre class="coderay">' +
        CodeRay.scan(code, language).html  +
      '</pre>'
    else
      "<pre>#{code}</pre>"
    end
  end
end

module Tilt
  class RedcarpetTemplate < Template
    def prepare
      @engine  = Redcarpet2.new(file, line, options) { data }
    end

    class Redcarpet2 < Template
      def prepare
        render_options = {
          fenced_code_blocks: true,
          tables: true,
          with_toc_data: true
        }

        @engine = Redcarpet::Markdown.new(::AwesomeMarkdown, render_options)
        @output = nil
      end
    end
  end
end
