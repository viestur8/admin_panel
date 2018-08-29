class ChangeTeachersHighestEduToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :teachers, :highest_edu, :integer, using: 'highest_edu::integer'
  end
end
