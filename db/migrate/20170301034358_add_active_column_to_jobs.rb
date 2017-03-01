class AddActiveColumnToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :active, :boolean, :default => false;
  end
end
