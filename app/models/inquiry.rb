class Inquiry < ApplicationRecord
  validates :name, presence: true, length: { in: 1..160 }
  validates :email, presence: true
  validates :number, presence: true
  validates :content, length: { maximum: 255 }
end