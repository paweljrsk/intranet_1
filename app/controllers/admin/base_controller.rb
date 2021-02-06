class Admin::BaseController < ApplicationController
    layout 'admin'
    
    before_action :authenticate
    
    def authenticate
        if not user_signed_in?
            redirect_to new_user_session_path
          end
    end
end
    