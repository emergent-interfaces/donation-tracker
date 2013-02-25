class ChangePeopleToProfiles < ActiveRecord::Migration
  def change
    rename_table :people, :profiles
  end
end
