class StudentsController < ApplicationController

  def index
    @students = Student.listing(params[:search]).order("#{params[:sort]} #{params[:direction]}")
  end
end
