class AddCityToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :city, :string
  end
end
