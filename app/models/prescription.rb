class Prescription
  include Mongoid::Document

  belongs_to :appointment

  has_many :drugs

  field :lab_tests, type: Hash

  validates :appointment, presence: true

  accepts_nested_attributes_for :drugs
end
