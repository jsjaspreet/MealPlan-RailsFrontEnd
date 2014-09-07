class CreateMealPlanSchedules < ActiveRecord::Migration
  def change
    create_table :meal_plan_schedules do |t|

      t.timestamps
    end
  end
end
