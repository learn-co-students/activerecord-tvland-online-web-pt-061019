class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def build_network(hash)
    self.network = Network.find_or_create_by(call_letters: hash[:call_letters])
  end

  def actors_list
    self.actors.map do |actor|
      actor.full_name
    end
  end

end
