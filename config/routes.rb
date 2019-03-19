Rails.application.routes.draw do
  # Routes for the Feed resource:

  # CREATE
  get("/feeds/new", { :controller => "feeds", :action => "new_form" })
  post("/create_feed", { :controller => "feeds", :action => "create_row" })

  # READ
  get("/feeds", { :controller => "feeds", :action => "index" })
  get("/feeds/:id_to_display", { :controller => "feeds", :action => "show" })

  # UPDATE
  get("/feeds/:prefill_with_id/edit", { :controller => "feeds", :action => "edit_form" })
  post("/update_feed/:id_to_modify", { :controller => "feeds", :action => "update_row" })

  # DELETE
  get("/delete_feed/:id_to_remove", { :controller => "feeds", :action => "destroy_row" })

  #------------------------------

  # Routes for the Profile resource:

  # CREATE
  get("/profiles/new", { :controller => "profiles", :action => "new_form" })
  post("/create_profile", { :controller => "profiles", :action => "create_row" })

  # READ
  get("/profiles", { :controller => "profiles", :action => "index" })
  get("/profiles/:id_to_display", { :controller => "profiles", :action => "show" })

  # UPDATE
  get("/profiles/:prefill_with_id/edit", { :controller => "profiles", :action => "edit_form" })
  post("/update_profile/:id_to_modify", { :controller => "profiles", :action => "update_row" })

  # DELETE
  get("/delete_profile/:id_to_remove", { :controller => "profiles", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
