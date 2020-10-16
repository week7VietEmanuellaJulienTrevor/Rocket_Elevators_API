class QuotesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_quote, only: [:show, :edit, :update, :destroy]
  
    def index
      @quotes = Quote.all
    end

    def show
    end
  
    def new
      @quote = Quote.new
      @quote.save
    end
  
    def edit
    end
  
    # def create
    #   @quote = Quote.new(quote_params)
  
    #     if params[:building_type] == "Residential" 
    #       @quote.quality = params[:quality]
    #       @quote.elevator_price = params[:elevator_price]
    #       @quote.installation_price = params[:installation_price]
    #       @quote.number_elevator = params[:number_elevator]
    #       @quote.total_price = params[:total_price]
    #     end
  
    #     if params[:building_type] == "Commercial" 
    #       @quote.quality = params[:quality]
    #       @quote.number_floor = params[:number_floor2]
    #       @quote.number_basement = params[:number_basement2]
    #       @quote.number_parking_space = params[:number_parking_space2]
    #       @quote.elevator_price = params[:elevator_price]
    #       @quote.installation_price = params[:installation_price]
    #       @quote.number_elevator = params[:number_elevator]
    #       @quote.total_price = params[:total_price]
    #     end
  
    #     if params[:building_type] == "Corporate" 
    #       @quote.quality = params[:quality]
    #       @quote.number_floor = params[:number_floor3]
    #       @quote.number_basement = params[:number_basement3]
    #       @quote.number_of_distinct_business = params[:number_of_distinct_business3]
    #       @quote.number_parking_space = params[:number_parking_space3]
    #       @quote.maximum_occupant_per_floor = params[:maximum_occupant_per_floor3]
    #       @quote.elevator_price = params[:elevator_price]
    #       @quote.installation_price = params[:installation_price]
    #       @quote.number_elevator = params[:number_elevator]
    #       @quote.total_price = params[:total_price]
    #     end
  
    #     if params[:building_type] == "Hybrid" 
    #       @quote.quality = params[:quality]
    #       @quote.number_floor = params[:number_floor4]
    #       @quote.number_basement = params[:number_basement4]
    #       @quote.number_of_distinct_business = params[:number_of_distinct_business4]
    #       @quote.number_parking_space = params[:number_parking_space4]
    #       @quote.maximum_occupant_per_floor = params[:maximum_occupant_per_floor4]
    #       @quote.elevator_price = params[:elevator_price]
    #       @quote.installation_price = params[:installation_price]
    #       @quote.number_elevator = params[:number_elevator]
    #       @quote.total_price = params[:total_price]
    #     end

    # Allowed parameters
    def quote_params
    params.permit(:building_type,
                    :no_of_appartments, 
                    :no_of_floors, 
                    :no_of_basements, 
                    :no_of_elevators_cages, 
                    :no_of_parking_spaces,
                    :no_of_tenant_companies,
                    :no_of_distinct_businesses,
                    :max_occupants_per_floor,
                    :created_at,
                    :num_elevators,
                    :product_grade,
                    :elevator_cost,
                    :installation_cost,
                    :total_cost
    )
    # params.require(:quote).permit()
    end
  end