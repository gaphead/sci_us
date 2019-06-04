class AddDonationToProjects < ActiveRecord::Migration[5.2]
  def change
    add_monetize :projects, :donation_cents, currency: { present: false }
  end
end
