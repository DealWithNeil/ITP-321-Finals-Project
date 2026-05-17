# Loop Demo 4 (while): Countdown-style auction prompt
#
# Why this exists:
# - Countdown problems read naturally as "keep going while time remains".
# - A lookup table (named vector) is cleaner than nested if/else statements.

run_auction_countdown <- function(start_bid = 500L, start_seconds = 5L, decrement_per_tick = 15L) {
  start_bid <- as.integer(start_bid)
  start_seconds <- as.integer(start_seconds)
  second <- start_seconds

  urgency <- c(
    "5" = "Plenty of time...",
    "4" = "Place your bids!",
    "3" = "Going once...",
    "2" = "Going twice...",
    "1" = "FINAL CHANCE!"
  )

  while (second >= 1L) {
    # Changing the current value each tick simulates a process over time.
    current <- start_bid - (start_seconds - second) * decrement_per_tick
    label <- urgency[as.character(second)]

    cat(sprintf(
      "[%d] $%d %s %s\n",
      second,
      current,
      paste(rep("!", second), collapse = ""),
      label
    ))

    second <- second - 1L
  }

  invisible(NULL)
}

run_auction_countdown()
