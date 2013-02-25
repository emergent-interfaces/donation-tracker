class AddDonorToUser < ActiveRecord::Migration
  def change
    add_column :profiles, :donor_id, :integer
  end
end
