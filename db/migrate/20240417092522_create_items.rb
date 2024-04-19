class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :comment
      t.string :task_id

      t.timestamps
    end
  end
end
