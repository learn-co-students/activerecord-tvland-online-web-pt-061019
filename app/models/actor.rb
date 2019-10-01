class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    person = self.characters.map do |value|
      value.name
    end
    tv = self.shows.map do |values|
      values.name
    end
    "#{person.join}" " - " "#{tv.join}"
  end

end
