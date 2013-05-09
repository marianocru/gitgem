class Gemset < ActiveRecord::Base
  belongs_to :proyecto, :class_name => "Proyecto", :foreign_key => "proyecto_id"
  has_many :versions
  attr_accessible :nombre, :proyecto_id

end
