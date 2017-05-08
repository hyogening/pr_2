class BucketlistController < ApplicationController
    def index
    end
    
    def write
        new_post = Bucketlist.new
        new_post.title = params[:title]
        new_post.save
        redirect_to "/d_info"
    end
    
    def info
        @every_post = Bucketlist.all
    end
    

    def destroy
        @one_post = Bucketlist.find(params[:id])
        @one_post.destroy
        
        redirect_to "/d_info"
    end
    
    
     def update_view
        @one_post = Bucketlist.find(params[:id])
     end
     
     
     
     def update
        @one_post = Bucketlist.find(params[:id])
        @one_post.title = params[:title]
        @one_post.save

        redirect_to '/d_info'
    end    
    
    
end
