class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string  :name
      t.decimal :lat
      t.decimal :lng
      t.belongs_to :city
      t.string  :street_address
      t.integer :zip
      t.string  :description
      t.string  :phone
      t.string  :email

      t.timestamps
    end
  end
end
