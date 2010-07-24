class Course < ActiveRecord::Base

  has_many :streams

  def self.find_courses
    find(:all, :order => "course")
  end

  def code_string
    case
    when code < 10
      "00#{code}"
    when code < 100
      "0#{code}"
    else
      code
    end
  end

def course_and_code
  "#{course}#{code}"
end

end
