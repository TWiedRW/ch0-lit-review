library(rgl)
set.seed(213)

persp3d(volcano, col = 'brown')
myview <- par3d("userMatrix")
clear3d(type = 'bboxdeco')

for(i in c(30, 60, 90, 120, 150)){
  persp3d(volcano, col = 'brown')
  par3d(userMatrix = myview, FOV = i)
  clear3d(type = 'bboxdeco')
  rgl.snapshot(glue::glue("images/fov-{i}.png"))
}
