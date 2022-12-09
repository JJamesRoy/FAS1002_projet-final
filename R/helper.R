library(fs)
library(stringr)
library(lubridate)

path = path("R")

import_dat = list.files(path = path, pattern = "[_]" )

import_path = path(path,
                   import_dat)

base_path = path("data","raw")

files = list.files(base_path)

files_name = path(base_path, files)

files_date = str_extract_all(files_name, "(?<=_).*(?<=\\d)")


########

if (as.character(today()) != files_date[1] & as.character(today()) != files_date[2]){
    source(import_path[1])
} else {
    print("Fichier déjà acquis")
}

if (format(today(), "%Y-%m") != format(as_date(as.character(files_date[3])), "%Y-%m") | is.null(files_date[3])){
    source(import_path[2])
} else {
    print("Fichier déjà acquis")
}


