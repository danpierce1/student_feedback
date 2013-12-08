class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :strengths
      t.string :weaknesses
      t.string :recommendations
      t.string :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
