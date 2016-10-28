class Patient < User
  field :first_name, type: String
  field :last_name, type: String
  field :phone_number, type: String
  field :date_of_birth, type: Date
  field :known_medical_conditions, type: String

  has_many :prescriptions
  has_many :appointments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :phone_number, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
