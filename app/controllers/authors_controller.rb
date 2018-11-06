class AuthorsController < ApplicationController

  def show
    @author = Author.last
    render html: cell(TableCell, items: @author.comments, model_name: 'comment', attributes: [:body, :author])
  end
end
