class UpdateWordsTableAgain < ActiveRecord::Migration[6.0]
  def change
    remove_column :saved_words, :type, :string
    remove_column :saved_words, :examples, :string
  end
end
