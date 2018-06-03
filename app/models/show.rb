class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.order(:rating).last
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def least_popular_show
    self.order(:rating).first
  end

end
