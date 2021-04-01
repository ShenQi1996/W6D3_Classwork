# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string
#
class User < ApplicationRecord 
    validates :username, presence: true
  
      

    has_many :artworks, 
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy

    has_many :viewable_artworks,
    foreign_key: :viewer_id, 
    class_name: :ArtworkShare

    has_many :shared_artworks,
    through: :viewable_artworks,
    source: :artwork,
    dependent: :destroy
end
