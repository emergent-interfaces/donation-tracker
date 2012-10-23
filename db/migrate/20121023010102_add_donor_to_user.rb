class AddDonorToUser < ActiveRecord::Migration
  def change
    add_column :people, :donor_id, :integer
  end
end
