module ApplicationHelper

  def sample_helper
    content_tag(:div, "My Content", class:"My-class")
  end

  def source_helper
   if session[:source]
     greeting = "Thanks for visiting me from #{session[:source]}"
     content_tag(:p, greeting, class:"source-greeting")
   end
  end


end
