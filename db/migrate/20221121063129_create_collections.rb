class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.text       :image
      t.integer    :favemember_id, null: false
      t.integer    :album_id, null: false
      t.integer    :version_id, null: false
      t.text       :others
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
