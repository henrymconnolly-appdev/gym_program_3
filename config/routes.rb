Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "profiles#index"
  # Routes for the Subscription resource:

  # CREATE
  get("/subscriptions/new", { :controller => "subscriptions", :action => "new_form" })
  post("/create_subscription", { :controller => "subscriptions", :action => "create_row" })
  post("/create_subscription_from_feed", { :controller => "subscriptions", :action => "create_row_from_feed" })
  post("/create_subscription_from_profile", { :controller => "subscriptions", :action => "create_row_from_profile" })

  # READ
  get("/subscriptions", { :controller => "subscriptions", :action => "index" })
  get("/subscriptions/:id_to_display", { :controller => "subscriptions", :action => "show" })

  # UPDATE
  get("/subscriptions/:prefill_with_id/edit", { :controller => "subscriptions", :action => "edit_form" })
  post("/update_subscription/:id_to_modify", { :controller => "subscriptions", :action => "update_row" })

  # DELETE
  get("/delete_subscription/:id_to_remove", { :controller => "subscriptions", :action => "destroy_row" })
  get("/delete_subscription_from_feed/:id_to_remove", { :controller => "subscriptions", :action => "destroy_row_from_feed" })
  get("/delete_subscription_from_profile/:id_to_remove", { :controller => "subscriptions", :action => "destroy_row_from_profile" })

  #------------------------------

  # Routes for the Lift total resource:

  # CREATE
  get("/lift_totals/new", { :controller => "lift_totals", :action => "new_form" })
  post("/create_lift_total", { :controller => "lift_totals", :action => "create_row" })
  post("/create_lift_total_from_profile", { :controller => "lift_totals", :action => "create_row_from_profile" })

  # READ
  get("/lift_totals", { :controller => "lift_totals", :action => "index" })
  get("/lift_totals/:id_to_display", { :controller => "lift_totals", :action => "show" })

  # UPDATE
  get("/lift_totals/:prefill_with_id/edit", { :controller => "lift_totals", :action => "edit_form" })
  post("/update_lift_total/:id_to_modify", { :controller => "lift_totals", :action => "update_row" })

  # DELETE
  get("/delete_lift_total/:id_to_remove", { :controller => "lift_totals", :action => "destroy_row" })
  get("/delete_lift_total_from_profile/:id_to_remove", { :controller => "lift_totals", :action => "destroy_row_from_profile" })

  #------------------------------

  # Routes for the Lift total detail resource:

  # CREATE
  get("/lift_total_details/new", { :controller => "lift_total_details", :action => "new_form" })
  post("/create_lift_total_detail", { :controller => "lift_total_details", :action => "create_row" })

  # READ
  get("/lift_total_details", { :controller => "lift_total_details", :action => "index" })
  get("/lift_total_details/:id_to_display", { :controller => "lift_total_details", :action => "show" })

  # UPDATE
  get("/lift_total_details/:prefill_with_id/edit", { :controller => "lift_total_details", :action => "edit_form" })
  post("/update_lift_total_detail/:id_to_modify", { :controller => "lift_total_details", :action => "update_row" })

  # DELETE
  get("/delete_lift_total_detail/:id_to_remove", { :controller => "lift_total_details", :action => "destroy_row" })

  #------------------------------

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
