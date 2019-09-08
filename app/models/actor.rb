class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    "#{self.characters.first.name} - #{self.shows.first.name}"
  end

  # peter = Actor.new(:first_name => "Peter", :last_name => "Dinklage")
  # tyrion = Character.new(:name => "Tyrion Lannister")
  # tyrion.actor = peter
  # thrones = Show.new(:name => "Game of Thrones")
  # tyrion.show = thrones
  # tyrion.save

  # ['Tyrion Lannister - Game of Thrones']

end


# ['Tyrion Lannister - Game of Thrones']
