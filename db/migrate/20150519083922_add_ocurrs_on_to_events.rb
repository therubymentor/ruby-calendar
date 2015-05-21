class AddOcurrsOnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :ocurrs_on, :date
  end
end
