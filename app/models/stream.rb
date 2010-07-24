class Stream < ActiveRecord::Base

has_many :lectures

has_one :course

end
