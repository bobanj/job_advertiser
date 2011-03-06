class AddCirriculumVitaeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :curriculum_vitae , :string
  end

  def self.down
    remove_column :users, :curriculum_vitae
  end
end
