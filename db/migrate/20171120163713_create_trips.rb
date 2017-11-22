class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true
      t.references :bunker, foreign_key: true
      t.date :booking_date
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
