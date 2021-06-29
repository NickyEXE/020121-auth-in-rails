class LikesController < ApplicationController

  def create
    current_user.likes.create(like_params)
    redirect_to posts_path
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
