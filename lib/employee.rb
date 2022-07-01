class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: {message: "First name is required"}
  validates :last_name, presence: {message: "Last name is required"}
  validates :hourly_rate, numericality: {only_integer: true, inclusion: 40..200}
  validates :store, presence: true
end
