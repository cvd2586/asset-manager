class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :path # FOR-IMAGE-UPLOAD
      t.integer :asset_id # FOR-IMAGE-UPLOAD   
      t.timestamps
    end
  end
end
