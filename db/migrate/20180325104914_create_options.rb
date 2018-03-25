class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :name
      t.string :description
      t.string :type
      t.timestamps
    end
   
    create_table(:participations_options, :id => false) do |t|
    t.references :participation
    t.references :option
    end

  add_index(:options, [ :name ])
  add_index(:participations_options, [ :participation_id, :option_id ])
  end
end
