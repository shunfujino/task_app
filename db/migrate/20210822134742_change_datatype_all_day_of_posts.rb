class ChangeDatatypeAllDayOfPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :all_day, :boolean
  end
end
