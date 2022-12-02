library(taskscheduleR)
library(fs)

path = path("R")

import = "import.R"

import_path = path(path,
                   import)

taskscheduler_create(taskname = "import", rscript = import_path, 
                     schedule = "DAILY", starttime = format(Sys.time() + 50, "%H:%M"))

########
