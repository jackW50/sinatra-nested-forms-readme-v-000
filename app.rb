require './config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :root 
  end 
  
  post '/display' do 
    @student = Student.new(params[:student])
 
    params[:student][:courses].each do |details|
      Course.new(details)
    end
 
    @courses = Course.all
    
    erb :display 
  end 
  
end 