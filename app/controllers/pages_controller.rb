class PagesController < ApplicationController
    def index
        @quotes = Quote.all
    end

    def new
        @quote = Quote.new
    end

    def create
        @quote = Quote.new(quote_params)
        if @quote.save
            redirect_to quotes_url
        else
            render 'new'
        end
    end

    def show
        @quote = Quote.find(quote_params)
    end

    def residential
    end

    def corporate
    end

    def quote
    end

    private

    def quote_params  
        params.require(:quote).permit(:building_type[], :no_of_appartments, :no_of_floors, :no_of_basements, :no_of_elevators_cages, :no_of_parking_spaces, :no_of_tenant_companies, :no_of_distinct_businesses, :max_occupants_per_floors)
    end  
end
