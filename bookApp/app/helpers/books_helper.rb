module BooksHelper
  def book_data(book)
    if book.title.present? && book.text.present? && book.created_at.present?
      data="Title: " + book.title + "  Content: " + book.text
    end
  end

  def book_title(book)
    if  book && book.title.present?
      book.title
    end
  end

  def book_text(book)
    if book && book.text.present?
      book.text
    end
  end


end
