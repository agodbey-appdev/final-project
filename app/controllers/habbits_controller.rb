class HabbitsController < ApplicationController
  def index
    @habbits = current_user.habbits.all
  @bank=current_user.actions.sum(:points)
    render("habbit_templates/index.html.erb")
  end

  def show
    @habbit = Habbit.find(params.fetch("id_to_display"))

    render("habbit_templates/show.html.erb")
  end

  def new_form
    @habbit = Habbit.new

    render("habbit_templates/new_form.html.erb")
  end

  def create_row
    @habbit = Habbit.new

    @habbit.description = params.fetch("description")
    @habbit.points = params.fetch("points")
    @habbit.active = params.fetch("active")
    @habbit.user_id = params.fetch("user_id")

    if @habbit.valid?
      @habbit.save

      redirect_to("/", :notice => "Habbit created successfully.")
    else
      render("habbit_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @habbit = Habbit.find(params.fetch("prefill_with_id"))

    render("habbit_templates/edit_form.html.erb")
  end

  def update_row
    @habbit = Habbit.find(params.fetch("id_to_modify"))

    @habbit.description = params.fetch("description")
    @habbit.points = params.fetch("points")
    @habbit.active = params.fetch("active")
    @habbit.user_id = params.fetch("user_id")

    if @habbit.valid?
      @habbit.save

      redirect_to("/habbits/#{@habbit.id}", :notice => "Habbit updated successfully.")
    else
      render("habbit_templates/edit_form_with_errors.html.erb")
    end
  end

  def deactivate_row
    @habbit = Habbit.find(params.fetch("id_to_deactivate"))

    @habbit.active=0
    @habbit.save

    redirect_to("/habbits", :notice => "Habbit deactivated successfully.")
  end
end
