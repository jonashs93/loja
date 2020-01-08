class CreateCores < ActiveRecord::Migration[6.0]
  def change
    create_table :cores do |t|
      t.string :nome, limit: 100
      t.timestamps
    end
  end
end
