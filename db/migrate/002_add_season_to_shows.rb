class AddSeasonToShows < ActiveRecord::Migration
  def change
#add a column, season, to the shows table. The datatype of this column is string.
add_column :shows, :season, :string
  end
end
