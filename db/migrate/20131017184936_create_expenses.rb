class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.float :amount

      t.timestamps
    end
  end
end
