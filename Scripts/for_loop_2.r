number <- 7
cat(paste0("=== Report: ", number, " x Table ===\n\n"))

for (i in 1:10) {
  product <- number * i
  parity <- ifelse(product %% 2 == 0, "EVEN", "ODD ")
  is_sq <- ifelse(floor(sqrt(product))^2 == product,
                  " [perfect square!]", "")
  bar <- paste(rep("-", product %/% 5), collapse="")
  cat(sprintf("%2d x %d = %3d [%s] %s%s\n",
              i, number, product, parity, bar, is_sq))
}
