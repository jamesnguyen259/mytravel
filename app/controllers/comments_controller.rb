class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :new_comment, only: [:create, :destroy]

  def create
    commentable = commentable_type.constantize.find(commentable_id)
    @comment = Comment.build_from(commentable, current_user.id, body)
    @comment.personal_rate = params[:comment][:personal_rate]
    @place = Place.find(@comment.commentable_id)
    
    respond_to do |format|
      if @comment.save
        make_child_comment
        format.html  { redirect_to @place, @new_comment }
        format.js
      end
    end
  end
  
  def destroy
    @delete_comment = Comment.find(params[:id])
    @place = Place.find(@delete_comment.commentable_id)
    
    respond_to do |format| 
      if @delete_comment.destroy
        format.html { redirect_to @place, @new_comment }
        format.js
      end
    end
  end

  private
  
    def new_comment
      @new_comment = Comment.build_from(@place, current_user.id, "")
    end
  
    def comment_params
      params.require(:comment).permit(:body, :commentable_id, :commentable_type, :comment_id, :personal_rate)
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
