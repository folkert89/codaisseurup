class AddAttributesToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :description, :text
    add_column :events, :location, :string
    add_column :events, :price, :decimal
    add_column :events, :capacity, :integer
    add_column :events, :includes_food, :boolean
    add_column :events, :includes_drinks, :boolean
    add_column :events, :starts_at, :datetime
    add_column :events, :ends_at, :datetime
    add_column :events, :active, :boolean
  end
end
