class Drug
  include Mongoid::Document

  belongs_to :prescription

  field :name
  field :dose, type: Hash
  field :notes

  validates :name, presence: true
  validates :dose, presence: true
  validates :notes, presence: true
end
