class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)

        render json:{comment:@comment}

    end

    private

    def comment_params
        params.require(:comment).permit(:comment).merge(user_id: current_user.id)
    end
end
