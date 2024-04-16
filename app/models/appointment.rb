class Appointment < ApplicationRecord
  validates :client_name, presence: true
end
