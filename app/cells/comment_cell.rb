class CommentCell < Cell::ViewModel
  property :body
  property :author

  def show
    render
  end

  private

  def author_link
    link_to "#{author.email}", author.email
  end
end