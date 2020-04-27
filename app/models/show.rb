class Show < ActiveRecord::Base
  
  def highest_rating
    highest = Show.maximum("rating")
    highest
  end 
  
  def most_popular_show
    Show.highest_rating.name 
  end 
  
  def lowest_rating
   Show.minimum("rating")
  end 
  
  def least_popular_show
    Show.lowest_rating.name 
  end 
  
  def ratings_sum
    Show.sum("rating")
  end 
  
  def popular_shows
    popular = Show.where("rating > 5")
    popular
  end 
  
  def shows_by_alphabetical_order
    Show.order(:name)
  end 

end