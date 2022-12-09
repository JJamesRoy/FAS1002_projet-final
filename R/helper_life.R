library(fs)
library(googlesheets4)

base_path = path("data","raw")

files = list.files(base_path)

files_name = path(base_path, files)

file.remove(files_name[c(3)])

URL_life = "https://docs.google.com/spreadsheets/d/1RheSon1-q4vFc3AGyupVPH6ptEByE-VtnjOCselU0PE/edit#gid=176703676"

life_name = paste("life_",
                  today(),
                  ".csv",
                  sep = "")

life_path = path(base_path,
                 life_name)
gs4_deauth()

life_expec = read_sheet(URL_life, sheet = 4)

write.csv(life_expec, file = life_path)
