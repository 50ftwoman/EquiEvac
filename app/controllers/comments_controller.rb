class CommentsController < ApplicationController
    before_action :find_post


def new
  @comment = Comment.new
end

def show
  @comment = Comment.find(params[:post_id])
  @user = user.name
end

def new
  @comment = Comment.new
end


def create
  @comment = @post.comments.new(params.require(:comment).permit(:content))
  @comment.user = current_user
  @comment.save

  if @comment.save
    redirect_to post_path(@post)
  else
      # render 'new'
    redirect_to post_path(@post)
  end
end

def update
end

def destroy
  @comment.destory
end

private

def find_post
  @post = Post.find(params[:post_id])
    # @user = User.find(params[:user_id])
end

def comment_params
  params.require(:comment).permit(:content)
end

end
