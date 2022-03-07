class MathController < ApplicationController
  def subtract_form
    render({ :template => "math_templates/subtract_form.html.erb" })
  end

  def subtract_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f

    @results = @first - @second

    render({ :template => "math_templates/subtract_results.html.erb" })
  end

  def add_form
    render({ :template => "math_templates/add_form.html.erb" })
  end

  def add_results
    @first = params.fetch("add1").to_f
    @second = params.fetch("add2").to_f

    @results = @first + @second

    render({ :template => "math_templates/add_results.html.erb" })
  end

  def multiply_form
    render({ :template => "math_templates/multiply_form.html.erb" })
  end

  def multiply_results
    @first = params.fetch("mult1").to_f
    @second = params.fetch("mult2").to_f

    @results = @first * @second

    render({ :template => "math_templates/multiply_results.html.erb" })
  end

  def divide_form
    render({ :template => "math_templates/divide_form.html.erb" })
  end

  def divide_results
    @first = params.fetch("div1").to_f
    @second = params.fetch("div2").to_f

    @results = @first / @second

    render({ :template => "math_templates/divide_results.html.erb" })
  end
end
