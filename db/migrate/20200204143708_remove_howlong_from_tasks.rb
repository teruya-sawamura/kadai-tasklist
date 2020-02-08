class RemoveHowlongFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :howlong, :varchar
  end
end
