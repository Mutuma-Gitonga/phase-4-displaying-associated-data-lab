class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    render json: user, include: :items, status: :ok
  end
end
