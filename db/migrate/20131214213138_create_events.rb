class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  :name
      t.date    :start_date
      t.date    :end_date
      t.time    :start_time
      t.time    :end_time
      t.decimal :cost
      t.integer :age_limit
      t.string  :website
      t.text    :description
      t.string  :contact_number
      t.string  :contact_name
      t.string  :contact_email
      t.string  :website

      t.belongs_to :category
      t.belongs_to :place

      t.timestamps
    end
  end
end
