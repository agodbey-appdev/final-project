class ResetController < ApplicationController
  def complete_reset
   @reset = Reset.new
    @reset.user_id = params.fetch("user_id")

      @reset.save

      redirect_to("/", :notice => "Karma Bank reset")
  end
end
    

