require 'mysql2'

class WelcomeController < ApplicationController
 
    def index; 
        @event_lists = Post.all
        p @event_lists
        @categories = Post.group(:category).count
    end
   end