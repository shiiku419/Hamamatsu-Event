require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# db/seeds.rb

# 例: テストユーザーを作成
User.create!(
    name: 'test',
    email: 'test@example.com',
    password_digest: 'test0'
  )

csv_file_path = 'db/hamamatsu_event.csv'
CSV.foreach(csv_file_path, headers: true, header_converters: :symbol) do |row|
  Post.create!(
    municipality_name: row[:municipality_name],
    event_name: row[:event_name],
    event_name_kana: row[:event_name_kana],
    event_name_english: row[:event_name_english],
    start_date: row[:start_date],
    end_date: row[:end_date],
    start_time: row[:start_time],
    end_time: row[:end_time],
    remarks: row[:remarks],
    event_details: row[:event_details],
    basic_fee: row[:basic_fee],
    detailed_fee: row[:detailed_fee],
    contact_name: row[:contact_name],
    contact_phone_number: row[:contact_phone_number],
    contact_extension_number: row[:contact_extension_number],
    organizer: row[:organizer],
    venue_name: row[:venue_name],
    address: row[:address],
    directions: row[:directions],
    latitude: row[:latitude],
    longitude: row[:longitude],
    access_method: row[:access_method],
    parking_info: row[:parking_info],
    capacity: row[:capacity],
    application_end_date: row[:application_end_date],
    application_end_time: row[:application_end_time],
    application_method: row[:application_method],
    url: row[:url],
    category: row[:category],
    district: row[:district],
    publication_date: row[:publication_date],
    update_date: row[:update_date]
  )
end