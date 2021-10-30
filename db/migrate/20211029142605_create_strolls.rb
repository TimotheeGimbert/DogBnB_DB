class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.belongs_to :city, index: true
      t.belongs_to :sitter, index: true
      t.belongs_to :pack, index: true

      t.timestamps
    end
  end
end
