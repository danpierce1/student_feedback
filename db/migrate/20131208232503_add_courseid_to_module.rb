class AddCourseidToModule < ActiveRecord::Migration
  def change
  	add_column :cmodules, :course_id, :integer
  end
end
