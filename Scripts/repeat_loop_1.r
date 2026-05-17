# Loop Demo 5 (repeat): Count until a stop condition
#
# Why this exists:
# - `repeat` creates an intentional infinite loop where the exit condition is
#   checked inside the loop.
# - This mirrors many real tasks (read user input, retry requests, search until found).

count_until <- function(max_value = 5L, start = 1L) {
  max_value <- as.integer(max_value)
  count <- as.integer(start)

  repeat {
    print(count)

    # Keeping the break check close to the action makes intent clear and prevents
    # accidental infinite loops.
    if (count >= max_value) {
      break
    }

    count <- count + 1L
  }

  invisible(count)
}

count_until(max_value = 5L)
