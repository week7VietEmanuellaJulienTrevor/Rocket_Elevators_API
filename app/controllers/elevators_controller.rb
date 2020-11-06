
class ElevatorsController < InheritedResources::Base
  skip_before_action :verify_authenticity_token, if: -> { controller_name == 'sessions' && action_name == 'create' }


  def index
    @elevators = Elevator.all
  end
  
  
    private
    def elevator_params
      params.require(:elevator).permit(:column_id, :serial_number, :model, :type, :status, :commissioning_date, :last_inspection_date, :inspection_certificate, :information, :notes)
    end

end
