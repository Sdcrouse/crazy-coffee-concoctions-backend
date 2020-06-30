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
    if turn_server_into_teapot?
      render json: {error: "I am a teapot"}, status: 418
    elsif concoction.save
      options = { include: [:coffees, :ingredients] }
      render json: ConcoctionSerializer.new(concoction, options), status: :accepted
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

    def turn_server_into_teapot?
      # In a future version, I could also look for a teapot as one of the ingredients.
      instructions = params[:concoction][:instructions]

      instructions.include?("Brew coffee with a teapot") ||
      instructions.include?("Change server into a teapot")
    end
end
