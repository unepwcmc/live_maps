class AddProgrammeIdToDatasets < ActiveRecord::Migration
  def change
    add_column :datasets, :programme_id, :integer
  end
end
