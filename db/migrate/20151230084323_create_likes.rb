class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string    :sid
      t.integer   :is_active
      t.integer   :song_id
      t.string    :ip_address
      t.string    :host_name
      t.timestamps null: false
    end
  end
end
