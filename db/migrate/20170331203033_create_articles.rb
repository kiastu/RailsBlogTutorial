class CreateArticles < ActiveRecord::Migration[5.0]
	# Use rails db:migrate to perform migration
	# use rails db:migrate RAILS_ENV=production
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
