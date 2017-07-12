require 'yaml'

require 'kramdown'
require 'sinatra/base'

class Slide
  def self.from(raw)
    case raw
    when String
      new(content: raw)
    when Hash
      kwargs = Hash[raw.map {|k,v| [k.to_sym, v] }]
      new(**kwargs)
    else
      raise 'Unable to parse presentation'
    end
  end

  attr_reader *%i[ content layout increments notes ]

  def initialize(content:, layout: nil, increments: nil, notes: nil)
    @content = content || ''
    @layout = layout || :default
    @increments = increments || []
    @notes = notes || ''
  end

  def to_a
    increments.each.with_object([content]) {|i, a|
      a << [a.last, i].join("\n")
    }.map {|c|
      Slide.new(content: c, layout: layout, notes: notes)
    }
  end
end

class Present < Sinatra::Base
  get "/" do
    redirect to("/0")
  end

  get "/:n" do
    n = params["n"].to_i
    slide = settings.slides[n] || Slide.new(content: '')
    content = slide.content

    doc = Kramdown::Document.new content, input: :GFM, syntax_highlighter: :rouge

    erb :slide, locals: { doc: doc, n: n, layout: slide.layout }
  end
end

if __FILE__ == $0
  slides = YAML.load_file(ARGV.shift).flat_map {|raw| Slide.from(raw).to_a }
  Present.run! slides: slides
end
