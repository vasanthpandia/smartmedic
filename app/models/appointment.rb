require 'autoinc'

class Appointment

  include Mongoid::Document
  include Mongoid::Autoinc

  belongs_to :doctor
  belongs_to :patient
  has_one :prescription

  field :start_time, type: DateTime
  field :duration, type: Integer
  field :visit_id

  validates :doctor, presence: true
  validates :patient, presence: true
  validates :start_time, presence: true

  increments :visit_id, scope: :doctor_id
end
