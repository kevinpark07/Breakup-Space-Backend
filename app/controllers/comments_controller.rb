class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.create(comment_params)
        
        if comment.save
            render json: comment
        else
            render json: {error: comment.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)

        if comment.save
            render json: comment
        else
            render json: {error: comment.errors.full_messages}, status: :not_acceptable
        end  
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy

        render json: comment
    end

    private
    
    def comment_params
        params.require(:comment).permit(:content, :date, :up_votes, :user_id, :post_id)
    end
end
