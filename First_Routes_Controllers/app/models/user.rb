# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string
#
class User < ApplicationRecord 
    validates :name, presence: true
    validates :email, presence: true  
      

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork

end
