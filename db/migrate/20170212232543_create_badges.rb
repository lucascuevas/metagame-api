class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name, null: false
      t.integer :points, default: 0
      t.text :description
      t.string :badge_type, null: false

      t.belongs_to :project,  null: false
      t.timestamps null: false
    end
  end
end
