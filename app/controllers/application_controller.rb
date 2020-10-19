class ApplicationController < ActionController::Base

    skip_before_action :verify_authenticity_token
        def after_sign_in_path_for(resource)
          if current_user.is_admin?
            rails_admin_path
          else
            new_quote_path
          end
        end  

end
