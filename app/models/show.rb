class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters # Gives self.actors method built in (hey, look at this shows characters)
  belongs_to :network

  def actors_list

    self.actors.map do |actor|
        actor.full_name
    end

  end

end
