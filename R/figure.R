library(fs)
library(stringr)
library(lubridate)

base_path = path("figures")

files = list.files(base_path)

files_name = path(base_path, files)

files_date = str_extract_all(files_name, "(?<=_).*(?<=\\d)")

dir = list.dirs(path = base_path, recursive = FALSE)


########

if (as.character(today()) != files_date[1]) {
    file.remove(files_name)
    unlink(dir, recursive = T)
} else {
    print("Graphiques déjà créés")
}
