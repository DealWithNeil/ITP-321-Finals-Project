# Visualization Demo 2: Scatter plot for relationship checking
#
# Why this exists:
# - Scatter plots are the fastest way to understand relationships between
#   numeric variables (trend, outliers, possible non-linear patterns).

#   ITP321_AUTO_INSTALL=1
auto_install <- identical(Sys.getenv("ITP321_AUTO_INSTALL"), "1")

if (!requireNamespace("ggplot2", quietly = TRUE)) {
  if (isTRUE(auto_install)) {
    install.packages("ggplot2")
  } else {
    stop(
      "Missing dependency: ggplot2. Install it with install.packages('ggplot2')\n",
      "Or re-run with ITP321_AUTO_INSTALL=1 to auto-install.",
      call. = FALSE
    )
  }
}

# ---- Data ----
data(mtcars)

# ---- Plot ----
ggplot2::ggplot(mtcars, ggplot2::aes(x = wt, y = mpg)) +
  ggplot2::geom_point(color = "#0072B2", alpha = 0.9) +
  ggplot2::labs(
    title = "Car Weight vs Fuel Efficiency (mtcars)",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon (mpg)"
  ) +
  ggplot2::theme_minimal()
