require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:root)
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do

  @digit_1 = params.fetch("digit_1").to_f
  @digit_2 = params.fetch("digit_2").to_f

  @result = @digit_1 + @digit_2

  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @digit_1 = params.fetch("digit_1").to_f
  @digit_2 = params.fetch("digit_2").to_f

  @result = @digit_1 - @digit_2


  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @digit_1 = params.fetch("digit_1").to_f
  @digit_2 = params.fetch("digit_2").to_f

  @result = @digit_1 * @digit_2

  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @digit_1 = params.fetch("digit_1").to_f
  @digit_2 = params.fetch("digit_2").to_f

  @result = @digit_1 / @digit_2

  erb(:div_result)
end
