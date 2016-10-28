class PagesController < ApplicationController

  def home

  end

  def dashboard
    @appointments = current_user.appointments
  end
end
