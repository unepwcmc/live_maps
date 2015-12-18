class CreateProgramme < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.string :name
    end
  end
end
