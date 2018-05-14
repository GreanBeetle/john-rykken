class CommentsController < ApplicationController

  def new
    @term = Term.find(params[:term_id])
    @comment = @term.comments.new
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

end
