class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception, prepend: true

  devise_group :user, contains: [:doctor, :patient]

end
