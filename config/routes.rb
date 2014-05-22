Extension::Routes.draw do |map|

# your extension routes go here
#map.namespace(:admin) do |admin|
	#admin.resource  :linktocontents, :collection => { :load => :get }
#end
map.resource :linktocontents, :collection=>{:link=>:get}
end