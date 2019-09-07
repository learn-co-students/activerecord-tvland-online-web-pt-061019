class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  belongs_to :network
  



  def actors_list
    # self.idea

    Actor.find_by("id = ?", self.actor_id).map do |actor|
      puts "#{actor.first_name} + " " + #{actor.last_name}"
    end
  end

  # def full_name
  #   self.first_name
  #   self.last_name
  # end
  #
  # Define a method in the Show class called #actors_list that returns an Array of the full
  # names of each actor associated with the a show.
  # Remember, a show should have many actors through characters.
  #

end
