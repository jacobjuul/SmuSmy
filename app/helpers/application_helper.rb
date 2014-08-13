module ApplicationHelper

	def hidden_div_if(condition, attributes = {}, &block)
		if condition
			attributes["style"] = "display: none"
		end
		content_tag("div", attributes, &block)
	end
	
  
  def show_non_blank(value, before=" ", after=" ")
    if value.blank?
      " "
    else
      before + value + after if !value.blank?
    end
  end
  
  def get_errors( error_array, default )
    if error_array.blank?
      default
    else
      error_array.join(" ")
    end
  end
  
end
