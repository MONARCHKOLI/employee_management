class Renamecolumnname < ActiveRecord::Migration[5.2]
  def change
    rename_column :employees, :years_of_expeerience, :years_of_experience
  end
end
