class CreateTopicOfInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :topic_of_interests do |t|
      t.string :topic_name
      t.text :short_desc

      t.timestamps
    end
  end
end
