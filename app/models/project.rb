class Project < ApplicationRecord
  has_many :punches, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5}
  validates :description, presence: true, length: { minimum: 5}
  validates :start_date, presence: true
end