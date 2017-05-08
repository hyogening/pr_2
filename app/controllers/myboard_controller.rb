class MyboardController < ApplicationController

    def index
    end

    def write
        new_post = Mypost.new
        new_post.title = params[:title]
        new_post.username = params[:username]
        new_post.content = params[:content]
        new_post.save
        redirect_to "/c_info"
    end
    
    def info
        @every_post = Mypost.all
    end


    
    def destroy
        @one_post = Mypost.find(params[:id])
        @one_post.destroy
        
        redirect_to "/c_info"
    end
    
    
     def update_view
        @one_post = Mypost.find(params[:id])
     end
     
     
     def update
        @one_post = Mypost.find(params[:id])
        @one_post.title = params[:title]
        @one_post.username = params[:username]
        @one_post.content = params[:content]
        @one_post.save

        redirect_to '/c_info'
     end    
end