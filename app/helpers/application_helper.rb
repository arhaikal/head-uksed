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
 
end
