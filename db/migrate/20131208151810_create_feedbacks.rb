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
        add_index :feedbacks, [:user_id, :created_at]

  end

end
