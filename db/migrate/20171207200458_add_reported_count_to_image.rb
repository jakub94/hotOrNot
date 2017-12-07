class AddReportedCountToImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :reported_count, :integer
  end
end
