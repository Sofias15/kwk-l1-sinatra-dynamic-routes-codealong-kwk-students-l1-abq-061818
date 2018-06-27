require_relative #'config/environment'

#class App < Sinatra::Base

  # This is a sample static route.
#  get '/hello' do
    #"Hello World!"
#  end

  # This is a sample dynamic route.
  #  @user_name = params[:name]
   # "Hello #{@user_name}!"
  #end

  # Code your final two routes here:
 # get '/medicines/:'do 
    #@medicine = all_the_medicines.select do |medicine|
    #  medicine.id== params[:id]
   # end.first 
   # erb :'/medicine/show.html'
   # end
    #####################################################


class App < Sinatra::Base

  # This is a sample static route.
  get '/goodbye' do
    "goodbye!"
  end

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    "goodbye #{@user_name}!"
  end

  # Code your final two routes here:
  get '/medicines/:'do 
    @medicine = all_the_medicines.select do |medicine|
      medicine.id== params[:id]
    end.first 
    erb :'/medicine/show.html'
    end
