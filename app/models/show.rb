class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    # self.idea

    # Actor.find_by("id = ?", self.actor_id).map do |actor|
    #   "#{actor.first_name} + " " + #{actor.last_name}"
    # end
    # actor.id == character.actor_id


    # Character.where("actor_id = ?", self.id).map do |actor|
    #   "#{actor.full_name} + " " + #{actor.show.name}"
    # end

    self.shows

    # ("Khaleesi - Game of Thrones")
  end

  def characters
    # self.id
    # self.characters
    # Character.where("show_id = ?", self.id).name.first
    # Show.where("id = ?", self.id)
    # Character.where("show_id = ?", self.id)
    # self.idcharacters
    Characters.where("character.show_id = ?", self.id)
    # self.id # this show
    # Character.show_id # the character we want
  end

end
