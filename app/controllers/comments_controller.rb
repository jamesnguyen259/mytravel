class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @new_comment = Comment.build_from(@place, current_user.id, "")
    commentable = commentable_type.constantize.find(commentable_id)
    @comment = Comment.build_from(commentable, current_user.id, body)
    place_id = @comment.commentable_id
    @place = Place.find(place_id)
    respond_to do |format|
      if @comment.save
        make_child_comment
        format.html  { redirect_to @place }
        format.js
      else
        format.html  { render :action => "new" }
      end
    end
  end
  
  def destroy
    @delete_comment = Comment.find(params[:id])
    place_id = @delete_comment.commentable_id
    @place = Place.find(place_id)
    @new_comment = Comment.build_from(@place, current_user.id, "")
    @delete_comment.destroy
    respond_to do |format| 
      format.html { redirect_to @place, @new_comment }
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type, :comment_id)
  end

  def commentable_type
    comment_params[:commentable_type]
  end

  def commentable_id
    comment_params[:commentable_id]
  end

  def comment_id
    comment_params[:comment_id]
  end

  def body
    comment_params[:body]
  end

  def make_child_comment
    return "" if comment_id.blank?

    parent_comment = Comment.find comment_id
    @comment.move_to_child_of(parent_comment)
  end

end