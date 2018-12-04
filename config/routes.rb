Rails.application.routes.draw do
  # Routes for the Action resource:

  # CREATE
  get("/actions/new", { :controller => "actions", :action => "new_form" })
  post("/create_action", { :controller => "actions", :action => "create_row" })

  # READ
  get("/actions", { :controller => "actions", :action => "index" })
  get("/actions/:id_to_display", { :controller => "actions", :action => "show" })

  # UPDATE
  get("/actions/:prefill_with_id/edit", { :controller => "actions", :action => "edit_form" })
  post("/update_action/:id_to_modify", { :controller => "actions", :action => "update_row" })

  # DELETE
  get("/delete_action/:id_to_remove", { :controller => "actions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Habbit resource:

  # CREATE
  get("/habbits/new", { :controller => "habbits", :action => "new_form" })
  post("/create_habbit", { :controller => "habbits", :action => "create_row" })


  # READ
    get("/", { :controller => "habbits", :action => "index" })
  get("/habbits", { :controller => "habbits", :action => "index" })
  get("/habbits/:id_to_display", { :controller => "habbits", :action => "show" })

  # UPDATE
  get("/habbits/:prefill_with_id/edit", { :controller => "habbits", :action => "edit_form" })
  post("/update_habbit/:id_to_modify", { :controller => "habbits", :action => "update_row" })

  # DELETE
  get("/deactivate_habbit/:id_to_deactivate", { :controller => "habbits", :action => "deactivate_row" })

  #------------------------------

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
