class UpdateWordsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :saved_words, :word, :string
    add_column :saved_words, :definitions, :string
    add_column :saved_words, :examples, :string
    remove_column :saved_words, :definition, :string
    remove_column :saved_words, :example, :string
  end
end
