class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.references :user
      t.string :first_name
      t.string :last_name
      t.string :street_name
      t.string :postcode
      t.string :country
      t.string :mobile
      t.string :gender
      t.datetime :date_of_birth

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
