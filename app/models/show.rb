class Show < ActiveRecord::Base

  def self.highest_rating
    self.order("rating DESC")[0].rating
  end

  def self.most_popular_show
    self.order("rating DESC")[0]
  end

  def self.lowest_rating
    self.order("rating ASC")[0].rating
  end

  def self.least_popular_show
    self.order("rating ASC")[0]
  end

  def self.ratings_sum
    sum = 0
    self.order("id ASC").each do |s|
      sum += s.rating
    end
    sum
  end

  def self.popular_shows
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order("name ASC")
  end

end
