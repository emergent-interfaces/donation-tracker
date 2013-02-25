class AddRecipientIdToPeople < ActiveRecord::Migration
  def change
    add_column :profiles, :recipient_id, :integer
  end
end
