# Function Demo 1: Add two numbers
#
# Why this exists:
# - Wrapping logic in a function makes it reusable, testable, and easier to read.
# - Input checks prevent nonsensical results when the function is misused.

add_numbers <- function(a, b) {
  if (!is.numeric(a) || !is.numeric(b)) {
    stop("`a` and `b` must be numeric.", call. = FALSE)
  }

  a + b
}

result <- add_numbers(5, 3)
print(result)
