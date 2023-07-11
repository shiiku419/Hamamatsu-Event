# lib/tasks/import_csv.rake

require 'csv'

namespace :csv do
  desc 'Import Posts from csv file'
  task import_posts: :environment do
    file_path = 'db/hamamatsu_event.csv' # CSVファイルのパスを指定

    user = User.first # テストユーザーを取得する

    CSV.foreach(file_path, headers: true, header_converters: :symbol) do |row|
      Post.create!(
        municipality_name: row[:MunicipalityName],
        event_name: row[:EventName],
        event_name_kana: row[:EventName_Kana],
        event_name_english: row[:EventName_English],
        start_date: row[:StartDate],
        end_date: row[:EndDate],
        start_time: row[:StartTime],
        end_time: row[:EndTime],
        remarks: row[:Remarks],
        event_details: row[:EventDetails],
        basic_fee: row[:BasicFee],
        detailed_fee: row[:DetailedFee],
        contact_name: row[:ContactName],
        contact_phone_number: row[:ContactPhoneNumber],
        contact_extension_number: row[:ContactExtensionNumber],
        organizer: row[:Organizer],
        venue_name: row[:VenueName],
        address: row[:Address],
        directions: row[:Directions],
        latitude: row[:Latitude],
        longitude: row[:Longitude],
        access_method: row[:AccessMethod],
        parking_info: row[:ParkingInfo],
        capacity: row[:Capacity],
        application_end_date: row[:ApplicationEndDate],
        application_end_time: row[:ApplicationEndTime],
        application_method: row[:ApplicationMethod],
        url: row[:URL],
        category: row[:Category],
        district: row[:District],
        publication_date: row[:PublicationDate],
        update_date: row[:UpdateDate],
      )
    end

    puts 'CSV data imported successfully!'
  end
end
