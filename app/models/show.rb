require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

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
    # binding.pry
    self.characters.collect do |char_name|
      actor_names << char_name.actor.first_name + " " + char_name.actor.last_name
    end
    actor_names
  end
end
