Rails.application.routes.draw do
  # Routes for the Action resource:

  # CREATE
  #no new action form, since new actions should be logged on main page
  post("/create_action", {:controller => "actions", :action => "create_row"})

  # READ
  get("/actions", {:controller => "actions", :action => "index"})
  # no need for show page, since index shows it all

  #no updates- the action either happened or it didn't

  # DELETE
  get("/delete_action/:id_to_remove", {:controller => "actions", :action => "destroy_row"})

  #------------------------------

  # Routes for the Habbit resource:

  # CREATE
  get("/habbits/new", {:controller => "habbits", :action => "new_form"})
  post("/create_habbit", {:controller => "habbits", :action => "create_row"})
  get("/habbits/reactivate_habbit/:id_to_display", {:controller => "habbits", :action => "reactivate"})

  # READ
  get("/", {:controller => "habbits", :action => "index"})
  get("/habbits", {:controller => "habbits", :action => "index"})
  get("/habbits/:id_to_display", {:controller => "habbits", :action => "show"})
  get("/old_habbits", {:controller => "habbits", :action => "show_old"})

  # UPDATE
  get("/habbits/:prefill_with_id/edit", {:controller => "habbits", :action => "edit_form"})
  post("/update_habbit/:id_to_modify", {:controller => "habbits", :action => "update_row"})

  # DELETE- soft delete
  get("/deactivate_habbit/:id_to_deactivate", {:controller => "habbits", :action => "deactivate_row"})

  #------------------------------

  # Routes for the Reset resource:
  
  
  # CREATE- no read, update, or delete. Resetting the bank is intentionally a permanent action
  post("/reset", {:controller => "reset", :action => "complete_reset"})

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
