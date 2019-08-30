class AddGenreToShows < ActiveRecord::Migration[5.2]
   add_column :shows, :genre, :string
end