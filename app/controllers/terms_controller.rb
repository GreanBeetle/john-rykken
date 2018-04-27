class TermsController < ApplicationController
  def index
    @terms = Term.all
    @first = Term.first 
  end
end
