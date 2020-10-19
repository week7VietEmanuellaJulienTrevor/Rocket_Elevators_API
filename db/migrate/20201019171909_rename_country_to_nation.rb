class RenameCountryToNation < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :addresses, :country, :nation
  end

  def self.down
    # rename back if you need
  end
end
