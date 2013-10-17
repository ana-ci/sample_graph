class SalesController < ApplicationController
  def index
    @goals = Sale.group_by_month(:created_at).count
    Rails.logger.info @goals
  end
end
