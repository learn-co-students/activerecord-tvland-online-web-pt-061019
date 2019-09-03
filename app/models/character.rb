class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  belongs_to :network

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_network(hash)
    self.network = Network.find_or_create_by(call_letters: hash[:call_letters])
  end

  def build_show(hash)
    self.show = Show.find_or_create_by(name: hash[:name])
  end

end
