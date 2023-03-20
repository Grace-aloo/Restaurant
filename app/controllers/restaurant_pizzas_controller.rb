class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create 
        rp = RestaurantPizza.create!(rp_params)
        render json: rp, status: :created
    end


    private 
    def rp_params 
        params.permit(:price,:pizza_id,:restaurant_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
