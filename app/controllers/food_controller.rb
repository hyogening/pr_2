class FoodController < ApplicationController
    def index
    end

    def write
        new_post = Foodinfo.new
        new_post.title = params[:title]
        new_post.amount = params[:amount]
        new_post.content = params[:content]
        new_post.save
        redirect_to "/a_info"
    end
    
    def info
        @every_post = Foodinfo.all
    end
    
    
    def destroy
        @one_post = Foodinfo.find(params[:id])
        @one_post.destroy
        
        redirect_to "/a_info"
    end
    
    
     def update_view
        @one_post = Foodinfo.find(params[:id])
     end
     
     
     def update
        @one_post = Foodinfo.find(params[:id])
        @one_post.title = params[:title]
        @one_post.amount = params[:amount]
        @one_post.content = params[:content]
        @one_post.save

        redirect_to '/a_info'
    end    
end
