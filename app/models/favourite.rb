class Favourite < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :address, :lattitude, :longitude, :source, :sub_source
  validates_presence_of :name, :address, :lattitude, :longitude, :source, :sub_source
  validates_uniqueness_of :name, :scope=>:user_id
    
  scope :recent_favourites, order('created_at desc').limit(50)
  scope :all_favourites, order('created_at desc')
  
end
