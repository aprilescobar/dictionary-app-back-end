class CreateSavedWords < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_words do |t|
      t.string :word
      t.string :definition
      t.string :example
      t.string :type

      t.timestamps
    end
  end
end
