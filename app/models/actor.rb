class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    char_show_name = []
    self.characters.collect do |char_name|
      char_show_name << char_name.name + " - " + char_name.show.name
      # binding.pry
    end

    char_show_name
  end

end
