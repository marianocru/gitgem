class Version < ActiveRecord::Base
  belongs_to :gemset, :class_name => "Gemset", :foreign_key => "gemset_id"
  attr_accessible :gemset_id, :numero_version, :revision
end
