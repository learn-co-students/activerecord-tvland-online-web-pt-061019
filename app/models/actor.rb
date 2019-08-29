class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    char_show_name = []
    self.characters.each do |char_name|
      char_show_name << char_name.name

    end

    self.shows.each do |show_name|
      char_show_name << show_name.name
      binding.pry
    end
    char_show_name
  end

end
