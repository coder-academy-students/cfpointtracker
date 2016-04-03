class AddIconToDiscipline < ActiveRecord::Migration
  def change
    add_column :disciplines, :icon, :string
  end
end
