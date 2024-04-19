class AddEmailToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :email, :string
  end
end
