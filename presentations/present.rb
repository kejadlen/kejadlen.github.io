require 'yaml'

require 'kramdown'
require 'sinatra/base'

class Slide
  def self.from(raw)
    case raw
    when String
      new(content: raw)
    else
      new(**raw)
    end
  end

  attr_reader *%i[ content layout ]

  def initialize(content:, layout: :default)
    @content, @layout = content, layout
  end
end

class Present < Sinatra::Base
  SLIDE_TEMPLATE = <<-ERB
<!DOCTYPE html>
<html>
<head>
  <style>
    body { margin: 0; padding-left: 2em; }
  </style>
</head>
<body>
  <div id="slide" class="<%= layout %>">
    <%= doc.to_html %>
  </div>
  <script>
    document.onkeydown = function(e) {
        e = e || window.event;
        if(e.key == ' ' || e.key == 'ArrowRight' || e.key == 'ArrowDown') {
          document.location.href = "<%= n + 1 %>";
        }
        if(e.key == 'ArrowLeft' || e.key == 'ArrowUp') {
          document.location.href = "<%= n - 1 %>";
        }
    };
  </script>
</body>
</html>
  ERB

  get "/" do
    redirect to("/0")
  end

  get "/:n" do
    n = params["n"].to_i
    slide = settings.slides[n] || Slide.new(content: '')
    content = slide.content || ''

    doc = Kramdown::Document.new content, input: :GFM, syntax_highlighter: :rouge

    erb SLIDE_TEMPLATE, locals: { doc: doc, n: n, layout: slide.layout }
  end
end

if __FILE__ == $0
  # require 'pry'; binding.pry
  slides = YAML.load_file(ARGV.shift).flatten(1).map {|raw| Slide.from(raw) }
  Present.run! slides: slides
end
