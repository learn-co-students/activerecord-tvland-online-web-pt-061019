class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
      actor_ids.collect do |actor_id| 
        "#{actors.name}"
      end
  end
end