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
        
        if params[:image].empty?
            post = Post.create(title: params[:title], content: params[:content], date: params[:date], up_votes: 0, user: user)
        else
            image = Cloudinary::Uploader.upload(params[:image])
            post = Post.create(title: params[:title], content: params[:content], date: params[:date], up_votes: 0, user: user, image: image["url"])
        end
        
        if post.save
            render json: post
        else
            render json: {error: post.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        post = Post.find(params[:id])
        post.update(post_params)

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
