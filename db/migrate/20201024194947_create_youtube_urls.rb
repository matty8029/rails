class CreateYoutubeUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :youtube_urls do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
