class AddExpertiseRefToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :expertise, null: false, foreign_key: true
  end
end
