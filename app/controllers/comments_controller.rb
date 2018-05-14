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


def new
    if current_user
      @term = Term.find(params[:term_id])
      @comment = @term.comments.new
    else
      respond_to do |format|
        format.html { redirect_to  }
      end
    end
  end
# REFERENCE CODE
# def create
#     @book = Book.new(book_params)
#     @book.available = true
#     @book.save
#     respond_to do |format|
#       format.html { redirect_to books_path }
#       format.js
#     end
#   end
#
#   def create
#     @animal = Animal.find(params[:animal_id])
#     @sighting = @animal.sightings.new(sighting_params)
#     @animal.update(sighted: true)
#     if @sighting.save
#       redirect_to animal_path(@sighting.animal)
#     else
#       render :new
#     end
#   end
