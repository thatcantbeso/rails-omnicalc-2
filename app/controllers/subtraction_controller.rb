class SubtractionController < ApplicationController
  def show_subtraction_new
    render({ :template => "subtraction_templates/subtraction_new" })
  end

  def subtract_these
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f

    @result =  @first_number - @second_number

    render({ :template => "subtraction_templates/subtraction_results" })
  end
end
