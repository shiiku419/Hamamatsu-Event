require 'mysql2'

class WelcomeController < ApplicationController
 
    def index; 
        @event_lists = EventList.all
    end
   end