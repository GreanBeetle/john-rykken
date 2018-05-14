class CommentsController < ApplicationController

  def new
    @current_user = current_user
    @term = Term.find(params[:term_id])
    @comment = @term.comments.new

  end

  def create
    @term = Term.find(params[:term_id])
    @comment = @term.comments.new(comment_params)
    # @comment.user_id = current_user.id
    @comment.save
    respond_to do |format|
      format.html { redirect_to term_path(@term) }
      format.js
    end

  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

end
