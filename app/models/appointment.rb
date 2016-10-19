class Appointment
  include Mongoid::Document

  belongs_to :doctor
  belongs_to :patient
  has_one :prescription

  field :start_time, type: DateTime
  field :duration, type: Integer
end
