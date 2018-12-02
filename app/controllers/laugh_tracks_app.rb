class LaughTracksApp < Sinatra::Base
  get '/' do
    redirect '/comedians'
  end

  get '/comedians' do
    @comedians = Comedian.list_comedians(params)
    @statistics = { average_age: Comedian.average_age,
                    average_runtime: Special.average_runtime,
                    unique_cities: Comedian.unique_cities,
                    special_count: Special.all.length
                  }
    erb :index, layout: :layout
  end
end
