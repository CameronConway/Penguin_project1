rm(list=ls()) #reset
graphics.off()
#keep project data organised
#keep separate scripts
#keep raw read only data by itself
#keep reports and manuscripts
#keep figures
#keep results
#link figs and results to scripts
#have readme for description

library(tidyverse)
penguins <- read.table('data/penguin_data.txt', header = T)
glimpse(penguins)
model1 <- lm(body_mass_g ~ flipper_length_mm, data=penguins)
summary(model1)
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, colour = 
  species)) + 
  geom_point() + 
  stat_smooth(method = 'lm')

ggsave('figs/1_flipper_bodymass_regression.png')

penguins_female <- subset(penguins, sex == 'female')
write_tsv(penguins_female, 'results/1_penguin_female_only.txt')

penguins_male <- subset(penguins, sex == 'male')
write_tsv(penguins_female, 'results/1_penguin_male_only.txt')


#comment

#new comment blah blah
# hello don't mind me dropping in to your code 
# WELL