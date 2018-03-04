class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin_required
    redirect_to '/', alert: 'You have no permission' unless current_user.admin?
  end
end
