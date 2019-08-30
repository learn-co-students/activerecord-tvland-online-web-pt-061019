require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    # show.name = "The Walking Dead"
    # character = Character.new(:name => "Rick Grimes")
    # andrew = Actor.new(first_name: "Andrew", last_name: "Lincoln")
    # character.actor = andrew
    # show.characters << character
    # show.save

    # expect(show.actors_list.length).to eq(1)
    # expect(show.actors_list).to include('Andrew Lincoln')
    actor_names = []
   
    self.characters.collect do |char_name|
      actor_names  << char_name.name + " - " + char_name.show.name
       binding.pry
    end

    actor_names
    # binding.pry
  end
end
