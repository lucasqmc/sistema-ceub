class Appointment < ApplicationRecord
  belongs_to :professional
  belongs_to :expertise
  validates_presence_of :client_name, :on => :update, :message => "Preencha o nome"
  validates_presence_of :document_number, :on => :update, :message => "Preencha o CPF"
end
