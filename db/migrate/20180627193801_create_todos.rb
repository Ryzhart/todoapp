class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :name #string is only 256 lenght max
      t.text :description
    end
  end
end
