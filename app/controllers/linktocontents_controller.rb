class LinktocontentsController < ExtensionsController
  
  def link
    @callback_id = params[:callback_id]
     render :action => 'link', :layout => 'lightbox'
  end

end
