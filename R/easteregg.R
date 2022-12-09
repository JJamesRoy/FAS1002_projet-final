library(fs)

path = path("assets","img")

img = path(path, list.files(path))

img1 = img[1]
img2 = img[2]

x = sample(1:2,1)

img_name = path(path, "logo.png")

if (x == 1){
    file.rename(img[1], img_name)
    file.rename(img[2], paste0("dummy", sample(1:100, 1), ".png"))
} else {
    file.rename(img[2], img_name)
    file.rename(img[1], paste0("dummy", sample(1:100, 1), ".png"))
}

file.rename(img1, img_name, overw)
file.rename(img2, paste0("dummy", sample(1:100, 1), ".png"))
            
file.rename(img[1], img_name)
file.rename(img[2], paste0("dummy", sample(1:100, 1), ".png"))
