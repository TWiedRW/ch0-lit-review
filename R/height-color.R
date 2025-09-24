library(rgl)
set.seed(213)

persp3d(volcano, col = 'brown')
myview <- par3d("userMatrix")
clear3d(type = 'bboxdeco')

for(i in c(0.3, 2)){
  persp3d(volcano, col = 'brown')
  par3d(userMatrix = myview)
  aspect3d(1, 1, i)
  clear3d(type = 'bboxdeco')
  rgl.snapshot(glue::glue("images/height-color-{i}.png"))
}
