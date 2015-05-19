class TopController < ApplicationController
  def index
  end


  def show
    @user = User.find(id_params[:id])

  end

private
  def id_params
    params[:id] = current_user.id
    params.permit(:id)
  end


end