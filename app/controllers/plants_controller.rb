class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render(json: plants, status: 200)
    end

    def show
        plant = Plant.find(params[:id])
        render(json: plant, status: 200)
    end

    def create
        new_plant = Plant.create(params.permit(:name, :image, :price))
        render(json: new_plant, status: 201)
    end
end