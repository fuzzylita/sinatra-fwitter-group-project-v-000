class User < ActiveRecord::Base
  has_many :tweets

  has_secure_password

  def slug
    self.username.downcase.split(" ").join("-")
  end

  # def self.find_by_slug(slug)
  #   match = ""

  #   self.all.each do |artist|
  #     if artist.slug == slug
  #        match = artist
  #     end
  #   end
  #   match
  # end

end