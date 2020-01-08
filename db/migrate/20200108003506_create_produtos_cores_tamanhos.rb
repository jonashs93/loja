class CreateProdutosCoresTamanhos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos_cores_tamanhos do |t|
      t.references :produto_cor, foreign_key: true
      t.references :tamanho, foreign_key: true
      t.timestamps
    end
  end
end
