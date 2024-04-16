class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.string :document_number
      t.string :client_name

      t.timestamps
    end
  end
end
