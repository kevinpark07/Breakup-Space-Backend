class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end

    def create
        user = User.find(params[:user_id]) 
        byebug
        if params[:image] != ''
            image = Cloudinary::Uploader.upload(params[:image])
            if params[:content].empty?
                post = Post.create(title: params[:title], date: params[:date], up_votes: 0, user: user, image: image["url"])    
            else 
                post = Post.create(title: params[:title], content: params[:content], date: params[:date], up_votes: 0, user: user, image: image["url"])    
            end
        elsif params[:image].empty?
            post = Post.create(title: params[:title], content: params[:content], date: params[:date], up_votes: 0, user: user)            
        end
        
        if post.save
            render json: post
        else
            render json: {error: post.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        post = Post.find(params[:id])
        
        if params[:image] != ''
            image = Cloudinary::Uploader.upload(params[:image])
            if params[:content].empty?
                post.update(title: params[:title], date: params[:date], up_votes: 0, user: user, image: image["url"])    
            else 
                post.update(title: params[:title], content: params[:content], date: params[:date], up_votes: 0, user: user, image: image["url"])    
            end
        elsif params[:image].empty?
            post.update(title: params[:title], content: params[:content], date: params[:date], up_votes: 0, user: user)            
        end

        if post.save
            render json: post
        else
            render json: {error: post.errors.full_messages}, status: :not_acceptable
        end  
    end

    def destroy
        post = Post.find(params[:id])

        post.destroy

        render json: post
    end

    private
    
    def post_params
        params.require(:post).permit(:title, :content, :date, :image, :up_votes, :user_id)
    end
end
