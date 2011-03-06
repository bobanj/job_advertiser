class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_name
      t.string :postcode
      t.string :country
      t.string :mobile
      t.string :gender
      t.datetime :date_of_birth
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.boolean :admin, :default => false
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :users
  end
end
