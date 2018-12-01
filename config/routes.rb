Rails.application.routes.draw do
  # Routes for the Habbit resource:

  # CREATE
  get("/habbits/new", { :controller => "habbits", :action => "new_form" })
  post("/create_habbit", { :controller => "habbits", :action => "create_row" })

  # READ
  get("/habbits", { :controller => "habbits", :action => "index" })
  get("/habbits/:id_to_display", { :controller => "habbits", :action => "show" })

  # UPDATE
  get("/habbits/:prefill_with_id/edit", { :controller => "habbits", :action => "edit_form" })
  post("/update_habbit/:id_to_modify", { :controller => "habbits", :action => "update_row" })

  # DELETE
  get("/delete_habbit/:id_to_remove", { :controller => "habbits", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
