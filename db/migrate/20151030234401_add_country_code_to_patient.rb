class AddCountryCodeToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :country_code, :string
  end
end
