# Loop Demo 6 (repeat): Exit early when a target is reached
#
# Why this exists:
# - Some loops stop when a target condition becomes true, not after a fixed
#   number of iterations (e.g., searching until a match is found).

count_until_target <- function(target = 3L, start = 1L) {
  target <- as.integer(target)
  count <- as.integer(start)

  repeat {
    print(count)

    # We exit as soon as the target is reached to avoid unnecessary work.
    if (count == target) {
      break
    }

    count <- count + 1L
  }

  invisible(count)
}

count_until_target(target = 3L)
