class Character < ActiveRecord::Base
  belongs_to :shows
  belongs_to :actors

  def say_that_thing_you_say
  end
end
