class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :title
      t.date :start_date
      t.integer :students_in_cohort
      t.timestamps
    end
  end
end
