# Loop Demo 1 (for): Build a staircase pattern
#
# Why this exists:
# - `for` loops are useful when building results step-by-step.
# - This demo also shows why formatting output matters (readability for humans).

build_staircase <- function(total_steps = 10L, character = "*", separator = " ") {
  # Validating inputs prevents confusing output (or accidental recycling).
  if (!is.numeric(total_steps) || length(total_steps) != 1 || is.na(total_steps) || total_steps < 1) {
    stop("`total_steps` must be a single number >= 1.", call. = FALSE)
  }
  total_steps <- as.integer(total_steps)

  # Accumulate into a single string so the final output is printed once.
  staircase <- ""

  for (step in seq_len(total_steps)) {
    stars <- paste(rep(character, step), collapse = separator)
    step_num <- formatC(step, width = nchar(total_steps), flag = " ")
    staircase <- paste0(staircase, "Step ", step_num, " | ", stars, "\n")
  }

  staircase
}

total_steps <- 10L
cat("Building your staircase...\n\n")
cat(build_staircase(total_steps = total_steps))
cat("\nTotal characters used:", sum(seq_len(total_steps)), "\n")
