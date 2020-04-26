class Show < ActiveRecord::Base
  
  def highest_rating
    Show.maximum(:rating)
  end 
  
  def most_popular_show
    show = Show.highest_rating 
    show.name
  end 
  
  def lowest_rating
    Show.minimum(:rating)
  end 
  
  def least_popular_show
    show = Show.lowest_rating 
    show.name
  end 
  
  def ratings_sum
    Show.sum('rating')
  end 
  
  def popular_shows
    popular = Show.where("rating > 5")
    popular
  end 
  
  def shows_by_alphabetical_order
    Show.order(:name)
  end 

end