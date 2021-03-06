# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  img_url    :string           not null
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord 
    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User,
        optional: true

    #not sure about this one
    has_many :shares,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare
    
    has_many :shared_viewers,
    through: :shares,
    source: :viewer

end
