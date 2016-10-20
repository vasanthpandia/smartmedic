class Prescription
  include Mongoid::Document

  belongs_to :patient
  belongs_to :doctor
  belongs_to :appointment

  field :drugs, type: Hash
  field :lab_tests, type: Hash

  validates :patient, presence: true
  validates :doctor, presence: true
  validates :appointment, presence: true
end
