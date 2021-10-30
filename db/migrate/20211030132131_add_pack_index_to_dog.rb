class AddPackIndexToDog < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :pack, foreign_key: true
  end
end
