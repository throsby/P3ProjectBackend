puts "🌱 Seeding spices..."


tower1 = Tower.create(next_neighbor: nil)
tower2 = Tower.create(next_neighbor: tower1.id)
tower3 = Tower.create(next_neighbor: tower2.id)
tower4 = Tower.create(next_neighbor: tower3.id)

puts "🏰 Towers seeded"


#In order for the following_plot ids to be common sense, the instantiations must be upside-down
plot4 = Plot.create(water_level: 0, following_plot: nil, dehydration_rate: 0.1, tower_id: tower1.id)
plot3 = Plot.create(water_level: 0, following_plot: plot4.id, dehydration_rate: 0.1, tower_id: tower1.id)
plot2 = Plot.create(water_level: 0, following_plot: plot3.id, dehydration_rate: 0.1, tower_id: tower1.id)
plot1 = Plot.create(water_level: 0, following_plot: plot2.id, dehydration_rate: 0.1, tower_id: tower1.id)

plot8 = Plot.create(water_level: 0, following_plot: nil, dehydration_rate: 0.1, tower_id: tower2.id)
plot7 = Plot.create(water_level: 0, following_plot: plot8.id, dehydration_rate: 0.1, tower_id: tower2.id)
plot6 = Plot.create(water_level: 0, following_plot: plot7.id, dehydration_rate: 0.1, tower_id: tower2.id)
plot5 = Plot.create(water_level: 0, following_plot: plot6.id, dehydration_rate: 0.1, tower_id: tower2.id)

plot12 = Plot.create(water_level: 0, following_plot: nil, dehydration_rate: 0.1, tower_id: tower3.id)
plot11 = Plot.create(water_level: 0, following_plot: plot12.id, dehydration_rate: 0.1, tower_id: tower3.id)
plot10 = Plot.create(water_level: 0, following_plot: plot11.id , dehydration_rate: 0.1, tower_id: tower3.id)
plot9 = Plot.create(water_level: 0, following_plot: plot10.id, dehydration_rate: 0.1, tower_id: tower3.id)

plot16 = Plot.create(water_level: 0, following_plot: nil, dehydration_rate: 0.1, tower_id: tower4.id)
plot15 = Plot.create(water_level: 0, following_plot: plot16.id, dehydration_rate: 0.1, tower_id: tower4.id)
plot14 = Plot.create(water_level: 0, following_plot: plot15.id, dehydration_rate: 0.1, tower_id: tower4.id)
plot13 = Plot.create(water_level: 0, following_plot: plot14.id, dehydration_rate: 0.1, tower_id: tower4.id)

puts "✅ Done seeding!"
