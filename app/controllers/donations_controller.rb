class DonationsController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    donation = Donation.create!(project_id: project.id, state: 'pending', user: current_user)

    redirect_to new_donation_payment_path(donation)
  end

  def show
    @donation = current_user.donations.where(state: 'paid').find(params[:id])
  end
end
