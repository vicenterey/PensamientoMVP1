class Measure < ApplicationRecord
  belongs_to :user

  validates :age, :height, :chest, :hip, :waist, :arm, :tlength, :inseam, :leglength, :thighwidth, :backwidth, presence: true
end
