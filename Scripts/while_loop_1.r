altitude <- 0; fuel <- 100; second <- 1

cat("LAUNCH SEQUENCE INITIATED\n")

while (second <= 5) {
  altitude <- altitude + second * 12
  fuel <- fuel - (second * 4)
  bar <- paste(rep("|", second * 4), collapse="")
  
  cat(sprintf("T+%ds Alt:%4dkm Fuel:%3d%% %s\n",
              second, altitude, fuel, bar))
  
  second <- second + 1
}