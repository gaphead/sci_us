class OrdersController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    order = Order.create!(project_sku: project.sku, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end
end
