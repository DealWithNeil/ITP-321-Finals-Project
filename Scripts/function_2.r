# Function Demo 2: Calculate the area of a rectangle

# Why this exists:
# - Demonstrates parameterized functions and returning values.
# - Basic validation keeps output meaningful and reduces debugging time.

calculate_area <- function(length, width) {
  if (!is.numeric(length) || !is.numeric(width)) {
    stop("`length` and `width` must be numeric.", call. = FALSE)
  }
  if (any(length < 0) || any(width < 0)) {
    stop("`length` and `width` must be non-negative.", call. = FALSE)
  }

  length * width
}

result_area <- calculate_area(5, 4)
print(result_area)
