class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.date :max_subscription_date

      t.timestamps
    end
  end
end
