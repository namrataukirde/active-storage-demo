class CommentsController < ApplicationController
  def new
    comment = Comment.new
  end

  def create
    comment = Comment.create!(content: params[:content])
    comment.image.attach(params[:image])
    redirect_to comment
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
