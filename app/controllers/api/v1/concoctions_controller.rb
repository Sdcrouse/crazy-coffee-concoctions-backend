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
    concoction = Concoction.new(concoction_params)
    if concoction.save
      render json: concoction, status: :accepted
    else
      # Note: I don't think this will get executed until I have Concoction validations.
      render json: { errors: concoction.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
    def concoction_params
      params.require(:concoction).permit(
        :name, :instructions, :notes,
        coffees_attributes: [:amount, :brand, :variety],
        ingredients_attributes: [:category, :amount, :name]
      )
    end
end
