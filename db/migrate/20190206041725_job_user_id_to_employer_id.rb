class JobUserIdToEmployerId < ActiveRecord::Migration[5.2]
  def change
    remove_index :jobs, :user_id
    rename_column :jobs, :user_id, :employer_id
    add_index :jobs, :employer_id
  end
end
