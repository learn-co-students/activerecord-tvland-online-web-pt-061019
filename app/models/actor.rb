class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name
    self.last_name
  end

  def list_roles
    Character.all.map do |character|
      characters.name
      shows.name
    end
  end
end


# ['Tyrion Lannister - Game of Thrones']
