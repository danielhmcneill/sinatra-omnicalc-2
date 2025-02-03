require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:subtraction_form)
end

get("/wizard_subtract") do
  @sub_first_num = params.fetch("sub_first_number").to_f
  @sub_second_num = params.fetch("sub_second_number").to_f

  @sub_result_num = @sub_first_num - @sub_second_num
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @mult_first_num = params.fetch("mult_first_number").to_f
  @mult_second_num = params.fetch("mult_second_number").to_f

  @mult_result_num = @mult_first_num * @mult_second_num  
  
  erb(:mult_result)
end

get("/divide") do
  erb(:divform)
end

get("/wizard_divide") do
  @div_first_num = params.fetch("div_first_number").to_f
  @div_second_num = params.fetch("div_second_number").to_f

  @div_result_num = @div_first_num / @div_second_num  

  erb(:div_result)
end
