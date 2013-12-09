class Course < ActiveRecord::Base
  attr_accessible :name



  belongs_to :user
  has_and_belongs_to_many :cmodules 
end