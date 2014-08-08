class Member < ActiveRecord::Base
  has_one :tree

  validates_format_of :name, with: /[a-zA-z]/, message: "must include letters"
  validates_presence_of :name
  validates_uniqueness_of :name, message: "already exists"
end
