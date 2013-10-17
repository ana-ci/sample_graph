class SalesController < ApplicationController
  def index
    @goals = [
      { name: 'sales',
          data: Sale.group_by_month(:created_at).count },
      { name: 'expenses', data: Expense.group_by_month(:created_at).count }
    ]
  end
end
