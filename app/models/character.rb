class Character < ActiveRecord::Base

  def say_that_thing_you_say
    Character.find_by("catchphrase = ?", self.catchphrase)
    puts "#{self.name} always says: #{self.catchphrase}"
  end

end
