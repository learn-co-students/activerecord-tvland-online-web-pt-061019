class AddTimeToShows < ActiveRecord::Migration[5.2]
    def change
      add_column :shows, :time, :string
    end
  end