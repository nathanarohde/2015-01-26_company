class Divisions < ActiveRecord::Migration
  def change
    create_table(:divisions) do |t|
      t.column(:name,:string)
    end
  end
end