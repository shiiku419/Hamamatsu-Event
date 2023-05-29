require 'mysql2'

class WelcomeController < ApplicationController
 
    def index; 
        @event_lists = EventList.all
        @categories = EventList.group(:Category).count
    end
   end