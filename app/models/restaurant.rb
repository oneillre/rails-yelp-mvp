class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in:
    %W(chinese italian japanese french belgian) }

  def average_rating
    rating_sum = 0
    reviews.each do |review|
      rating_sum += review.rating
    end
    (rating_sum / reviews.length).round(2)
  end

  def reviews_present?
    reviews.empty? == false
  end
end
