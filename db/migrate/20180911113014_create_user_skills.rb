class CreateUserSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :user_skills do |t|
      t.integer :rating
      t.belongs_to :user, foreign_key: true
      t.belongs_to :skill, foreign_key: true
      t.timestamps
    end
  end
end
