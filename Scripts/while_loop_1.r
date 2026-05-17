# Loop Demo 3 (while): Simple launch-sequence simulation
#
# Why this exists:
# - `while` loops are a good fit when continuation depends on a condition.
# - Simulations often update "state" each step (altitude, fuel, time).

simulate_launch <- function(seconds = 5L, start_altitude = 0L, start_fuel = 100L) {
  seconds <- as.integer(seconds)
  altitude <- as.integer(start_altitude)
  fuel <- as.integer(start_fuel)
  second <- 1L

  cat("LAUNCH SEQUENCE INITIATED\n")

  while (second <= seconds) {
    # The numbers are arbitrary; the important part is that each iteration
    # updates state based on the current time step.
    altitude <- altitude + second * 12L
    fuel <- max(0L, fuel - (second * 4L))

    # Small visual indicator helps the reader scan progress quickly.
    bar <- paste(rep("|", second * 4L), collapse = "")

    cat(sprintf("T+%ds Alt:%4dkm Fuel:%3d%% %s\n", second, altitude, fuel, bar))
    second <- second + 1L
  }

  invisible(list(seconds = seconds, altitude = altitude, fuel = fuel))
}

simulate_launch(seconds = 5L)
