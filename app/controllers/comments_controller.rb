class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        if @comment.save
          render json: { comment: @comment }
        else
          render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def comment_params
        params.permit(:comment_data).merge(user_id: current_user.id)
    end
end
