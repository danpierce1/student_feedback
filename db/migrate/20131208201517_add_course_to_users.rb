class AddCourseToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :course, :string, default:"unlisted"
  end
end
