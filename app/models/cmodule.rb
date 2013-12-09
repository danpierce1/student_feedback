class Cmodule < ActiveRecord::Base
  attr_accessible :name
   has_and_belongs_to_many :courses  # NEW
   has_many :feedbacks

end
