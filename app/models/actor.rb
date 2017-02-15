class Actor < ApplicationRecord
  #  - name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => { :scope => :dob}
  has_many(:characters, class_name: "Character", foreign_key: "actor_id" )
  has_many :movies, through: "characters"
end
