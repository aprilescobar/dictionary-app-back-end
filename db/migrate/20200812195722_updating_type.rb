class UpdatingType < ActiveRecord::Migration[6.0]
  def change
    rename_column :saved_words, :type, :word_type
  end
end
