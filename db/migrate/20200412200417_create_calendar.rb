class CreateCalendar < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.string :name
      t.boolean :leap_year, default: false
    end
  end
end
