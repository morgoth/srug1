class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
      t.integer :beers_count, :null => false
      t.belongs_to :dormitory
      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
