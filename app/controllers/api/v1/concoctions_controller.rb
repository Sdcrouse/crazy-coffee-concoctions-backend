class Api::V1::ConcoctionsController < ApplicationController
  def index
    concoctions = Concoction.all
    render json: concoctions, only: [:id, :name] # This is all I need, for now. I can use a serializer later.
  end

  def show
    render plain: "You've rendered the /api/v1/concoctions/#{params[:id]} route!"
  end
end
