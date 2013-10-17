class Expense < ActiveRecord::Base
  attr_accessible :amount, :created_at
end
