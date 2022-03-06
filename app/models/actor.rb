class Actor < ActiveRecord::Base 
    has_many :roles
    has_many :movies, through: :roles
    has_many :pets
end