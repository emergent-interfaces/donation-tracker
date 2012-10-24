class AddRecipientIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :recipient_id, :integer
  end
end
