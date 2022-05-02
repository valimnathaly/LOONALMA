class AddStatusToComentarios < ActiveRecord::Migration[7.0]
  def change
    add_column :comentarios, :status, :string
  end
end
