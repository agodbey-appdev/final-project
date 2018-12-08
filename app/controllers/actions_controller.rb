class ActionsController < ApplicationController
  def index
    @actions = current_user.actions.all

    render("action_templates/index.html.erb")
  end


  def create_row
    @action = Action.new

    @action.habbit_id = params.fetch("habbit_id")
    @action.user_id = params.fetch("user_id")
    @action.points = params.fetch("points")

    if @action.valid?
      @action.save

      redirect_back(:fallback_location => "/actions", :notice => "Action created successfully.")
    else
      render("action_templates/new_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @action = Action.find(params.fetch("id_to_remove"))

    @action.destroy

    redirect_to("/actions", :notice => "Action deleted successfully.")
  end
end
