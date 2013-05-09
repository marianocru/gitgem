class Proyecto < ActiveRecord::Base
  has_many :gemsets
  attr_accessible :descripcion, :nombre, :usuario_id
end
