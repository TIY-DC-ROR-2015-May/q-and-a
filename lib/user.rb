class User < ActiveRecord::Base
  # validates :name, presence: true
  validates_presence_of :name

  # def User.sixth
  def self.sixth
    User.limit(1).offset(5)
  end

  def first_name
    name.split.first
  end
end