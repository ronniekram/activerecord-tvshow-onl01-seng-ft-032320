class Show < ActiveRecord::Base
  
  def highest_rating
    highest = Show.maximum(:rating)
    highest
  end 
  
  def most_popular_show
    show = Show.highest_rating 
    show.name
  end 
  
  def lowest_rating
   lowest = Show.minimum(:rating)
   lowest
  end 
  
  def least_popular_show
    show = Show.lowest_rating 
    show.name
  end 
  
  def ratings_sum
    sum = Show.sum('rating')
    sum
  end 
  
  def popular_shows
    popular = Show.where("rating > 5")
    popular
  end 
  
  def shows_by_alphabetical_order
    Show.order(:name)
  end 

end