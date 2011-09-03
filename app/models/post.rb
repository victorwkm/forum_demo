class Post < ActiveRecord::Base
  belongs_to :board, :counter_cache => true
  belongs_to :user
  
  scope :recent, :order => 'updated_at DESC'
  #default_scope :order => 'created_at DESC'
  
  has_attached_file :excerpt_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
end
