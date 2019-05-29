class Book < ApplicationRecord
  validates :text, presence: true
  validates :title, length: {maximum: 5}

  after_create :just_created
  after_destroy :just_deleted

  scope :python, -> {where(title: "Python")}

  before_create do |book|
    puts "about to create #{book.title}"
  end

  private

    def just_created
      puts "Just entered a new Book!!!"
    end

  private

    def just_deleted
      puts "Just deleted a book"
    end

end
