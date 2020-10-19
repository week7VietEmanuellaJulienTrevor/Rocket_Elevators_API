class ColumnsController < InheritedResources::Base

  private

    def column_params
      params.require(:column).permit(:type, :number_of_floors_served, :status, :information, :notes)
    end

end
