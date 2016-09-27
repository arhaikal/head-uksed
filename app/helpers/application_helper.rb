module ApplicationHelper

   def current_class?(test_path)
    return 'active1' if request.path == test_path
    ''
   end 

end
