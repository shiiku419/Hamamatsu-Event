class DashboardsController < ApplicationController
    def create
        @post = Post.new(post_params)
    
        respond_to do |format|
            if @post.save
                format.json { render json: { status: 'SUCCESS', message: 'Saved post', data: @post }, status: :ok }
            else
                format.json { render json: { status: 'ERROR', message: 'Post not saved', data: @post.errors }, status: :unprocessable_entity }
            end
        end
    end
    
    private
    
    def post_params
        params.require(:post).permit(
            :municipality_name,
            :event_name,
            :event_name_kana,
            :event_name_english,
            :district,
            :start_date,
            :end_date,
            :start_time,
            :end_time,
            :postal_code,
            :municipality_name,
            :district,
            :address,
            :latitude,
            :longitude,
            :access_info,
            :parking_info,
            :price_basic,
            :price_detail,
            :organizer,
            :contact_name,
            :contact_tel,
            :remarks,
            :event_details,
            :basic_fee,
            :detailed_fee,
            :contact_phone_number,
            :contact_extension_number,
            :venue_name,
            :directions,
            :access_method,
            :capacity,
            :application_end_date,
            :application_end_time,
            :application_method,
            :url,
            :category,
            :publication_date,
            :update_date
        )
    end
end
