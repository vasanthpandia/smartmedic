class Patient < User
  field :first_name, type: String
  field :last_name, type: String
  field :phone_number, type: String
  field :date_of_birth, type: Integer
  field :known_medical_conditions, type: Hash

  has_many :prescriptions
  has_many :appointments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :phone_number, presence: true
end
