class Member < ActiveRecord::Base
has_belongs_to_many :team  #, touch: true
end
