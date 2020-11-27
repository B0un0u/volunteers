class AddDefaultValueToDoneInMissions < ActiveRecord::Migration[6.0]
  def change
    change_column :missions, :done, :boolean, default: false
  end
end
