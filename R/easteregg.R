library(fs)

path = path("assets","img")

img = path(path, list.files(path))

x = sample(1:2,1)

img_name = path(path, "logo.png")

dummy = path(path, "dummy")

if (x == 1){
    file.rename(img[2], paste0(dummy, sample(1:1000, 1), ".png"))
    file.rename(img[1], img_name)
} else {
    file.rename(img[1], paste0(dummy, sample(1:1000, 1), ".png"))
    file.rename(img[2], img_name)
}

# stringi, stro-rand
