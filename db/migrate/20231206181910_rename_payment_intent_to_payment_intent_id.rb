class RenamePaymentIntentToPaymentIntentId < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :payment_intent, :payment_intent_id
  end
end
