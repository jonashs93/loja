class CreateProdutosCores < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos_cores do |t|
      t.references :produto, foreign_key: true
      t.references :cor, foreign_key: true
      t.timestamps
    end
  end
end
