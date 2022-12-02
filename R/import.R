library(lubridate)
library(fs)
library(googlesheets4)

#########

# Remove old files

base_path = path("data","raw")

files = list.files(base_path)

files_name = path(base_path, files)

file.remove(files_name)

###########

URL_energy = "https://nyc3.digitaloceanspaces.com/owid-public/data/energy/owid-energy-data.csv"

energy_name = paste("energy_",
                    today(),
                    ".csv",
                    sep = "")

energy_path = path(base_path,
                   energy_name)

download.file(url = URL_energy, destfile = energy_path)

#######

URL_co2 = "https://nyc3.digitaloceanspaces.com/owid-public/data/co2/owid-co2-data.csv"

co2_name = paste("co2_",
                 today(),
                 ".csv",
                 sep = "")

co2_path = path(base_path,
                co2_name)

download.file(url = URL_co2, destfile = co2_path)

#######

URL_life = "https://docs.google.com/spreadsheets/d/1RheSon1-q4vFc3AGyupVPH6ptEByE-VtnjOCselU0PE/edit#gid=176703676"

life_name = paste("life_expectancy_",
                  today(),
                  ".csv",
                  sep = "")

life_path = path(base_path,
                 life_name)

gs4_deauth()

life_expec = read_sheet(URL_life, sheet = 4)

write.csv(life_expec, file = life_path)

############
