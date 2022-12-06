library(fs)

URL_life = "https://docs.google.com/spreadsheets/d/1RheSon1-q4vFc3AGyupVPH6ptEByE-VtnjOCselU0PE/edit#gid=176703676"

life_name = paste("life_expectancy_",
                  today(),
                  ".csv",
                  sep = "")

life_path = path(base_path,
                 life_name)
