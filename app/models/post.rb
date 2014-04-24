class Post < ActiveRecord::Base

  belongs_to :user



  def how_long
  	origin = self.created_at
  	age = Time.now - origin
  	age = age.to_i
  	if age < 3600
  		age = age/60
  		return "#{age.round} minutes ago"
  	elsif age >= 3600 && age < 86400
  		age = age/3600
  		return "#{age} hours ago"
  	elsif age >= 86400 && age <604800
  	    age = age/86400
  	    return "#{age} days ago"
  	elsif age >= 604800 && age < 2419200
  		age = age/604800 
  		return "#{age} weeks ago"
    elsif age >= 2419200 && age < 1.year
    	age = age/2419200
    	return "#{age} months ago"
    else
    	return "#{age} more than a year ago"
    end
  end
end
    	
  		

