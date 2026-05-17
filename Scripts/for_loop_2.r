# Loop Demo 2 (for): Multiplication table report
#
# Why this exists:
# - A loop is a simple way to generate a consistent line-by-line report.
# - Adding small "interpretation hints" (even/odd, perfect square) makes the
#   output more informative than raw numbers.

is_perfect_square <- function(x) {
  # Defensive check: negatives cannot be perfect squares over real numbers.
  ifelse(x >= 0 & floor(sqrt(x))^2 == x, TRUE, FALSE)
}

print_multiplication_report <- function(number = 7L, max_multiplier = 10L, bar_unit = 5L, max_bar = 30L) {
  # Parameters avoid hardcoding and make the script reusable for other values.
  number <- as.integer(number)
  max_multiplier <- as.integer(max_multiplier)
  bar_unit <- as.integer(bar_unit)
  max_bar <- as.integer(max_bar)

  cat(sprintf("=== Report: %d x Table ===\n\n", number))

  for (i in seq_len(max_multiplier)) {
    product <- number * i
    parity <- ifelse(product %% 2 == 0, "EVEN", "ODD ")
    square_note <- ifelse(is_perfect_square(product), " [perfect square!]", "")

    # Add a small bar as a visual cue; cap it to keep lines readable.
    bar_len <- min(product %/% bar_unit, max_bar)
    bar <- paste(rep("-", bar_len), collapse = "")

    cat(sprintf("%2d x %d = %3d [%s] %s%s\n", i, number, product, parity, bar, square_note))
  }
}

print_multiplication_report(number = 7L)
