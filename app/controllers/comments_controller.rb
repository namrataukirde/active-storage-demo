class CommentsController < ApplicationController
  def new
    comment = Comment.new
  end

  def create
    comment = Comment.create! params.require(:comment).permit(:content)
    comment.image.attach(params[:comment][:image])
    redirect_to comment
  end

  def show
    comment = Comment.find(paramd[:id])
  end
end
