class CreateSasses < ActiveRecord::Migration
  def self.up
    create_table :sasses do |t|
      t.string :text
      t.string :name
      t.integer :age

      t.timestamps
    end
  end

  def self.down
    drop_table :sasses
  end
end
