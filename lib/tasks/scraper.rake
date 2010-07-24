namespace :scraper do
  desc "scrape the course list and create new models for courses streams and lectures"
  task :scrape => :environment do
    myfile = File.open("#{RAILS_ROOT}/log/course_list.txt")
    reg = /^([^\t]*)\t([^\t]*)\t([^\t]*)\t(.\d).*\t(Trimester \d).*\t([^\t]*)\t([^\t]*)\t([^\t]*)\t([^\t]*)$/
    myfile.each do |line|
      m = reg.match(line)
      if m
        puts m

        course = Course.find_or_create_by_course_and_code_and_trimester( :course => m[1],
                                                                         :code => m[2].to_i,
                                                                         :trimester => m[5] )
        stream = Stream.find_or_create_by_crn_and_type_id( :crn => m[3].to_i,
                                                           :type_id => m[4],
                                                           :course_id => course.id )
        lecture = Lecture.create( :days => m[6],
                                  :start => m[7],
                                  :finish => m[8],
                                  :room => m[9],
                                  :stream_id => stream.id )




      end
    end
  end
end
