class CreateModuleCourseJoinTable < ActiveRecord::Migration
  def change
    create_table :courses_modules, :id => false do |t|
      t.integer :course_id
      t.integer :cmodule_id
    end
  end
end 