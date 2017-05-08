class MovieController < ApplicationController

    def index
    end

    def write
        new_post = Bestmovie.new
        new_post.title = params[:title]
        new_post.genre = params[:genre]
        new_post.content = params[:content]
        new_post.save
        redirect_to "/b_info"
    end
    
    def info
        @every_post = Bestmovie.all
    end
    
    
    def destroy
        @one_post = Bestmovie.find(params[:id])
        @one_post.destroy
        
        redirect_to "/b_info"
    end
    
    
     def update_view
        @one_post = Bestmovie.find(params[:id])
     end
     
     
     def update
        @one_post = Bestmovie.find(params[:id])
        @one_post.title = params[:title]
        @one_post.genre = params[:genre]
        @one_post.content = params[:content]
        @one_post.save

        redirect_to '/b_info'
     end    
    end

 