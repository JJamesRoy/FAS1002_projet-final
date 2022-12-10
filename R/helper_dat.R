library(lubridate)
library(fs)

#########

# Remove old files

base_path = path("data","raw")

files = list.files(base_path)

files_name = path(base_path, files)

file.remove(files_name[c(1,2)])

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

co2_name = paste0("co2_",
                 today(),
                 ".csv")

co2_path = path(base_path,
                co2_name)

download.file(url = URL_co2, destfile = co2_path)

