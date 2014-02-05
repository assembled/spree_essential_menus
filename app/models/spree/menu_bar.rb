class Spree::MenuBar < ActiveRecord::Base
  
  has_many :menus
  has_many :images, :as => :viewable, :class_name => "Spree::Image", :dependent => :destroy
  #, -> { order(:position) }
  
  # attr_accessible :name, :description, :css_class
  
  validates_presence_of :name
  
end