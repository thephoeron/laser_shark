class SetupController < ApplicationController

  include CourseCalendar # concern

  skip_before_action :allowed_day?

  def show
    @setup = true
    @activities = Activity.chronological.for_day("setup")
  end

end
