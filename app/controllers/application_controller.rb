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
    newTower = Tower.create(next_neighbor: Tower.last.id)
    newTower.plotPopulate
    {newTower.id => newTower.plots}.to_json
  end

  delete "/remove_tower" do
    # Destroy the plots of the last tower
    Tower.last.plots.each do |plot|
      plot.destroy
    end
    # THEN Destroy the last tower
    Tower.last.destroy
    hash_out = {} #Hash of towers to-be
    Tower.all.each do |tower|
      hash_out[tower.id] = tower.plots
    end
    hash_out.to_json
  end

  patch "/water/:tower/:plot" do    
    # Find the relative tower, return its plots, water it. Return the plot.
    Tower.find(params[:tower].to_i).plots[params[:plot].to_i].water(0.1)
    Tower.find(params[:tower].to_i).plots[params[:plot].to_i].to_json
  end

  patch "/sample/:tower/:plot" do
    # Find the relative tower, return its plots, dryOut. Return the plot.
    Tower.find(params[:tower].to_i).plots[params[:plot].to_i].dryOut
    Tower.find(params[:tower].to_i).plots[params[:plot].to_i].to_json
  end

  # Add in a 404 error

end
