class AddDefaultToApproved < ActiveRecord::Migration[6.1]
  def change
    change_column_default :bookings, :approved, from: nil, to: false
  end
end
