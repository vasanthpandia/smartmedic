module ApplicationHelper

  def current_user_role
    if current_user.class.to_s == 'Doctor'
      'Doctor'
    else
      'Patient'
    end
  end

end
