class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.belongs_to :sitter, index: true
    end
  end
end
