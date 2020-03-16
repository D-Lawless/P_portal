class AddDetailsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :brief, :text
    add_column :events, :event_start, :datetime
    add_column :events, :event_end, :datetime
    add_column :events, :location, :string
    add_column :events, :collaborators, :string
  end
end
