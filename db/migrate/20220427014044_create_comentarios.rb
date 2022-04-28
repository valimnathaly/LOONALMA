class CreateComentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :comentarios do |t|
      t.string :nome
      t.text :comentario
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
