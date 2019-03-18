class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :name #limited to 255 characters
      t.text :description #can contain more data than string
    end
  end
end
