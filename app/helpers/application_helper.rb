module ApplicationHelper

   def current_class?(test_path)
    return 'active1' if request.path == test_path
    ''
   end 
  

  def embedded_svg filename, options={}
   file = File.read(Rails.root.join('app', 'assets', 'images', filename))
   doc = Nokogiri::HTML::DocumentFragment.parse file
   svg = doc.at_css 'svg'
   if options[:class].present?
     svg['class'] = options[:class]
   end
   doc.to_html.html_safe
 end
 
 def markdown(description)
   renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
   options = {
    autolink: true,
    no_intra_emphasis: true,
    disable_indented_code_blocks: true,
    fenced_code_blocks: true,
    lax_html_blocks: true,
    strikethrough: true,
    superscript: true
   }
   Redcarpet::Markdown.new(renderer, options).render(description).html_safe
 end

 def mark(material)
   renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
   options = {
    autolink: true,
    no_intra_emphasis: true,
    disable_indented_code_blocks: true,
    fenced_code_blocks: true,
    lax_html_blocks: true,
    strikethrough: true,
    superscript: true
   }
   Redcarpet::Markdown.new(renderer, options).render(material).html_safe
 end

end
