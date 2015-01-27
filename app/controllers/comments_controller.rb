class CommentsController < ApplicationController

    def create
      @comment = Comment.find(params[:comment_id])
      @comment = @comment.comments.create(comment_params)
      redirect_to comment_path(@comment)
    end

    private
    def comment_params
      params.require(:comment).permit(:comment, :qid, :ansid)
    end
end
