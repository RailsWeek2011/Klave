class ApplicationController < ActionController::Base
  protect_from_forgery

   protected
      def is_admin?
        unless current_user.try(:admin?)
          redirect_to :back
          flash[:alert] = "Access denied! Lack of permissions"
        end
      end
end
