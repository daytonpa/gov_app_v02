class CreateGovOfficials < ActiveRecord::Migration
  def change
    create_table :gov_officials do |t|
      t.string :name
      t.string :party
      t.string :branch
      t.string :elected
      t.string :state
      t.string :about

      t.timestamps null: false
    end
  end
end
