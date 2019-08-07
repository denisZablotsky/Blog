class CommentsConroller < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  private

  def comment_params
    prarms.require(:comment).permit(:content)
  end
end