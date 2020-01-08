class CreateProdutoCores < ActiveRecord::Migration[6.0]
  def change
    create_table :produto_cores do |t|
      t.references :produto, foreign_key: true
      t.references :cor, foreign_key: true
      t.integer    :quantidade
      t.timestamps
    end
  end
end
