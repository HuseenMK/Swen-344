class CreateHelloRails < ActiveRecord::Migration[5.0]
  def change
    create_table :hello_rails do |t|
      t.string :name
      t.date :due_on
      t.boolean :completed

      t.timestamps
    end
  end
end
