class Show < ActiveRecord::Base
  
  def self.highest_rating
    highest = Show.maximum("rating")
    highest
  end 
  
  def self.most_popular_show
    Show.highest_rating.name 
  end 
  
  def self.lowest_rating
   Show.minimum("rating")
  end 
  
  def self.least_popular_show
    Show.lowest_rating.name 
  end 
  
  def self.ratings_sum
    Show.sum("rating")
  end 
  
  def self.popular_shows
    popular = Show.where("rating > 5")
    popular
  end 
  
  def self.shows_by_alphabetical_order
    Show.order("name")
  end 

end