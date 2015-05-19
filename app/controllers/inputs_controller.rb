class InputsController < ApplicationController
  def new
    @input = Input.new
  end


  def create
    Input.create(create_params)
    redirect_to action: :new
  end

  private
  def create_params
    params.require(:input).permit(:name, :issue, :ksf).merge(user_id: current_user.id)
  end
end
