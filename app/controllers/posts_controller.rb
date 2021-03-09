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
        # updated_date = Date.strptime(params[:date], '%Y-%m-%d')
        # title: params[:title], content: params[:content], date: updated_date.strftime('%m/%d/%Y'), time: params[:time], up_vote: params[:up_votes], user_id: params[:user_id]
        post = Post.create(post_params)
        
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
        params.require(:post).permit(:title, :content, :date, :time, :up_votes, :user_id)
    end
end
