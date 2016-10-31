Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/photos/new",       { :controller => "photos", :action => "new_form" })
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })
  get("/photos/:id/edit",  { :controller => "photos", :action => "edit" })
  get("/create_photo",     { :controller => "photos", :action => "create_row" })
  get("/edit_photo",       { :controller => "photos", :action => "edit_photo" })
  get("/delete_photo/:id", { :controller => "photos", :action => "delete_photo" })

end
