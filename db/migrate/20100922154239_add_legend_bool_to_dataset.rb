class AddLegendBoolToDataset < ActiveRecord::Migration
  def self.up
    add_column :datasets, :has_legend, :boolean
  end

  def self.down
    remove_column :datasets, :has_legend
  end
end
