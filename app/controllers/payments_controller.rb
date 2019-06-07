class PaymentsController < ApplicationController


  def new
  end

  def create
    @project = Project.find(params[:project_id])
    @donation = Donation.create(state: "pending", project: @project, amount: params[:amount].to_i, user: current_user)

    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id, # You should store this customer id and re-use it.
      amount:       params[:amount].to_i * 100,
      description:  "Payment for Project for order #{@donation.id}",
      currency:     @donation.amount.currency
    )

    @donation.update(payment: charge.to_json, state: 'paid')
    project = Project.find(@donation.project_id.to_i)
    project.current_funding += @donation.amount.to_i
    project.save!

    redirect_to donation_path(@donation), flash: { message: "You made your first donation!" }
  rescue Stripe::CardError => e
    redirect_to project_path(@project), alert: e.message
  end
end
