desc 'Publish a draft'
task :publish, [:draft] do |t, args|
  drafts = FileList.new(File.join('_drafts', "*#{args[:draft]}*"))
  abort '' if drafts.empty?
  abort <<-ABORT if drafts.size > 1
Too many matching drafts:
#{drafts.map {|d| "\t#{d}" }.join("\n")}
  ABORT

  draft = drafts[0]
  title = File.read(draft)[/title:\s*(.*)/, 1]
  slug = title.downcase.split(/[^\w]+/).join(?-)
  ext = draft.pathmap('%x')
  post = File.join('_posts', "#{Date.today.to_s}-#{slug}#{ext}")
  mv draft, post
end
