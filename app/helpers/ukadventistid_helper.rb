module UkadventistidHelper
	
# ==============================================================================================================
def vitality (selected_content, selected_region)
	if selected_region == "National"
		vitality_str = "http://adventist.org.uk/adventistlife/vitality"
	elsif selected_region == ""
		vitality_str = selected_content
	else
		vitality_str = "http://"+selected_region +  ".adventist.org.uk/adventistlife/vitality"
	end 
	return vitality_str
end 
		
#=============================================================================================================

def spirituality (selected_content, selected_region)
	if selected_region == "National"
		spirituality_str = "http://adventist.org.uk/adventistlife/spirituality"
	elsif selected_region == ""
		spirituality_str = selected_region
	else
		spirituality_str = "http://"+selected_region +  ".adventist.org.uk/adventistlife/spirituality"
	end 
	return spirituality_str
end 
#==============================================================================================================

def service (selected_content, selected_region)
	if selected_region == "National"
		service_str = "http://adventist.org.uk/adventistlife/service"
	elsif selected_region == ""
		service_str = selected_content
	else
		service_str= "http://"+selected_region +  ".adventist.org.uk/adventistlife/service"
	end 
	return service_str
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
