class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :municipality_name
      t.string :event_name
      t.string :event_name_kana
      t.string :event_name_english
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.text :remarks
      t.text :event_details
      t.string :basic_fee
      t.string :detailed_fee
      t.string :contact_name
      t.string :contact_phone_number
      t.string :contact_extension_number
      t.string :organizer
      t.string :venue_name
      t.string :address
      t.text :directions
      t.decimal :latitude
      t.decimal :longitude
      t.text :access_method
      t.text :parking_info
      t.integer :capacity
      t.date :application_end_date
      t.time :application_end_time
      t.text :application_method
      t.string :url
      t.string :category
      t.string :district
      t.date :publication_date
      t.date :update_date

      t.timestamps
    end
  end
end
