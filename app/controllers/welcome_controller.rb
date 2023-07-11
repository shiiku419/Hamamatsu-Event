require 'mysql2'

class WelcomeController < ApplicationController
 
    def index; 
        @event_lists = Post.all
        @categories = Post.group(:category).count
    end
   end