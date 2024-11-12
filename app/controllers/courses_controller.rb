class CoursesController < ApplicationController
  def index
    @course = Course.all.order({ :created_at => :desc })

    render({ :template => "courses/index" })
  end

  def show
    the_id = params.fetch("path_id")
    @matching_courses = Course.where({ :id => the_id})
    @course = @matching_courses.at(0)

    render({ :template => "courses/show" })
  end

  def create
    course = Course.new
    course.title = params.fetch("query_title")
    course.term_offered = params.fetch("query_term")
    # course.id = params.fetch("query_course_id")

    if course.valid?
      course.save
      redirect_to("/courses", { :notice => "Course created successfully." })
    else
      redirect_to("/courses", { :notice => "Course failed to create successfully." })
    end
  end

  def update
    c_id = params.fetch("an_id")
    course = Course.where({ :id => c_id }).at(0)

    course.title = params.fetch("query_title")
    course.term_offered = params.fetch("query_term_offered")
    course.department_id = params.fetch("query_department_id")

    if course.valid?
      course.save
      redirect_to("/courses/#{course.id}", { :notice => "Course updated successfully."} )
    else
      redirect_to("/courses/#{course.id}", { :alert => "Course failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("an_id")
    course = Course.where({ :id => the_id }).at(0)

    course.destroy

    redirect_to("/courses", { :notice => "Course deleted successfully."} )
  end
end
