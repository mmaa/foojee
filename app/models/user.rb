class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :email, presence: true, uniqueness: true, case_sensitive: false
  validates :name, presence: true
end
