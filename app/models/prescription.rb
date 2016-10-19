class Prescription
  include Mongoid::Document

  belongs_to :patient
  belongs_to :doctor
  belongs_to :appointment

  field :drugs, type: Hash
  field :lab_tests, type: Hash
end
