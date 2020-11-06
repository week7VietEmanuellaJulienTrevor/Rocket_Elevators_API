class AddFieldsToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :contact_full_name, :string
    add_column :quotes, :phone, :string

    # add_column :quotes, :company_name, :string
    # add_column :quotes, :contact_email, :string
  end
end
