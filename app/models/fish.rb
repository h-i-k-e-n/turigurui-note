class Fish < ActiveRecord::Base
  validates :name,:image, presence: true
  has_one_attached :image
 
        def self.search(search)
          if search != ""
            @fishes = Fish.where('name LIKE(?) OR item_a LIKE (?) OR item_b LIKE (?)OR item_c LIKE (?)OR memo LIKE (?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
          
          else
            @fishes = Fish.all
          end
        end

  # include ActiveHash::Associations
  # has_many :items
end
