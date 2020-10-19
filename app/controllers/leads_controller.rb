class LeadsController < InheritedResources::Base

  private

    def lead_params
      params.require(:lead).permit(:contact_full_name, :company_name, :email, :phone, :project_name, :project_description, :department, :message, :attached_file, :created_at)
    end

end
