class Doctor < User
  field :first_name, type: String
  field :last_name, type: String
  field :phone_number, type: String
  field :date_of_birth, type: Date
  field :education, type: String
  field :experience, type: String
  field :specialization, type: String

  has_many :appointments
  has_many :prescriptions

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :phone_number, presence: true
  validates :education, presence: true
  validates :specialization, presence: true

  def name
    "#{first_name} #{last_name}"
  end

end
