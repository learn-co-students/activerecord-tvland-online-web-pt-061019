class Character < ActiveRecord::Base

  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    Character.find_by("catchphrase = ?", self.catchphrase)
    self.name.titleize + " always says: #{self.catchphrase}"
  end

  # frasier = Show.new(name: "Frasier")
  # niles = Character.new(name: "Niles Crane")
  # niles.show = frasier
  # niles.save
  #
  # frasier.reload
  # expect(frasier.characters).to include(niles)
  # expect(niles.show).to eq(frasier)

end
