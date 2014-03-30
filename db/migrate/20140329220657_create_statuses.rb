class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :provider
      t.string :providers_guid
      t.string :type
      t.date :posted_at
      t.integer :timezone_offset
      t.references :location, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
