class AddDescriptionToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :desc, :string
  end
end
