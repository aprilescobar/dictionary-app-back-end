class DroppingTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :saved_words
  end
end
