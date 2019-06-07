class DonationsController < ApplicationController

  def show
    @donation = current_user.donations.where(state: 'paid').find(params[:id])
  end
end
