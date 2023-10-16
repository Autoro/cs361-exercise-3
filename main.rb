class CourseList
  attr_accessor max_courses
  
  def initialize(max_courses)
    @max_courses = max_courses
    @courses = []
  end

  def remove(course)
    courses.delete(course)
  end

  def add(course)
    if courses.length < @max_courses
      courses.append(course)
    end
  end
end

class Student
  def initialize(course_list)
    @course_list = course_list
  end

  def add_course(course)
    @course_list.add(course)
  end

  def remove_course(course)
    @course_list.remove(course)
  end
end