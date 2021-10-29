class CreatePacks < ActiveRecord::Migration[5.2]
  def change
    create_table :packs do |t|

      t.timestamps
    end
  end
end
