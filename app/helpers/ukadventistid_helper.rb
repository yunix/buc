module UkadventistidHelper
	
# ==============================================================================================================
def region_link(selected_region = nil)
		
		if selected_region!="National" 
			regionsubdomain = selected_region + "."  
		else
			regionsubdomain = ""
		end
		
		urls = {}
		urls["link_spirituality"] = regionsubdomain +  "adventist.org.uk/adventistlife/spirituality"
		urls["link_vitality"] = regionsubdomain +  "adventist.org.uk/adventistlife/vitality"
		urls["link_service"] = regionsubdomain +  "adventist.org.uk/adventistlife/service"
		urls["link_beliefs"] = regionsubdomain +  "adventist.org.uk/adventistlife/beliefs"
		
		return urls
	end
	 
# ==============================================================================================================
def menu_item_categories(selected = nil)
    options = '<option value="--Please Choose a Category--">--Please Choose a Category--</option>'
    @current_site.menu_item_groups.each do |name, values|
      category_array = values.collect {|klass| [klass.category, klass.category]}.sort {|a,b| a[0].downcase <=> b[0].downcase }
      options += "<optgroup label=\"#{name}\">" + options_for_select(category_array, selected) + "</optgroup>"
    end
    options
  end
  
# ==============================================================================================================

	def menu_item_options(category, selected = nil)
	    links = @current_site.menu_item_links(category)
	    links.unshift(['--Please Choose a Link--', ''])
	    options_for_select(links, selected)
      end
#==============================================================================================================
# ==============================================================================================================


end 