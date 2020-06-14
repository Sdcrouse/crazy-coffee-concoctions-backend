class Api::V1::ConcoctionsController < ApplicationController
  def index
    concoctions = Concoction.all
    render json: concoctions, only: [:id, :name] # This is all I need, for now. I can use a serializer later.
  end

  def show
    concoction = Concoction.find_by_id(params[:id])
    if concoction
      options = { include: [:coffees, :ingredients] }
      render json: ConcoctionSerializer.new(concoction, options), status: :accepted
    else
      render status: :not_found
    end
  end

  def create
  end
end
