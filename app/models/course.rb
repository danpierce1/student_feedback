class Course < ActiveRecord::Base
  attr_accessible :name
   has_many :users
   validates :name, presence: true
     has_and_belongs_to_many :cmodules  # NEW

end
