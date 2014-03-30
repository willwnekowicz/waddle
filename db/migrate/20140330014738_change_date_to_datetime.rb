class ChangeDateToDatetime < ActiveRecord::Migration
  def change
    remove_column :statuses, :posted_at
    add_column :statuses, :posted_at, :datetime
  end
end
