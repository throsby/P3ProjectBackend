class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  
  get "/towers" do
    hash_out = {}
    Tower.all.each do |tower|
      hash_out[tower.id] = tower.plots
    end
    hash_out.to_json
  end

  get "/tower/:id" do
    Tower.all.find(params[:id]).to_json
  end

  get "/tower/plots/:id" do
    Tower.all.find(params[:id]).plots.to_json
  end

  post "/add_tower" do
    newTower = Tower.create(next_neighbor: Tower.last)
    newTower.plotPopulate
    {newTower.id => newTower.plots}.to_json
  end



  # Add in a 404 error

end
