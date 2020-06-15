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
    # params1 = {
    #   concoction: {
    #     name: "Random Concoction",
    #     instructions: "Mix all coffees and ingredients. Drizzle with caramel. Serve hot.",
    #     notes: "This is for coding purposes only",
    #     coffees: [
    #       {amount: "1 tsp", brand: "Folger's", variety: "Instant Classic Roast"},
    #       {amount: "1 tsp", brand: "Yuban", variety: "Instant Coffee"}
    #     ],
    #     ingredients: [
    #       {category: "liquid", amount: "1 cup", name: "hot water"},
    #       {category: "sweetener", amount: "1 packet", name: "Sweet and Low"},
    #       {category: "creamer", amount: "1-2 tsp", name: "Irish creamer"},
    #       {category: "other", amount: "1/4 tsp", name: "Cinnamon"},
    #       {category: "other", amount: "1/2 tsp", name: "Caramel"}
    #     ]
    #   }
    # }
  end
end
