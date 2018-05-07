class Show < ActiveRecord::Base

  def self.most_popular_show
    self.all.order(rating: :desc).take(1)[0]
  end

  def self.highest_rating
    most_popular_show.rating
  end

  def self.least_popular_show
    self.all.order(rating: :asc).take(1)[0]
  end

  def self.lowest_rating
    least_popular_show.rating
  end

  def self.ratings_sum
    self.all.sum(:rating)
  end

  def self.popular_shows
    self.all.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.all.order(name: :asc)
  end

end
