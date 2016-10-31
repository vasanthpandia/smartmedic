class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception, prepend: true

  devise_group :user, contains: [:doctor, :patient]

  def authenticate_user!
    return super if user_signed_in?
    redirect_to new_doctor_session_path, notice: 'Please login.'
  end

  [:sign_up, :sign_in].each do |action|
    define_method("after_#{action}_path_for") { |resource| dashboard_path }
  end

end
