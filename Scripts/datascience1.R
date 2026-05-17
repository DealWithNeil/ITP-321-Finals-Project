# Data Science Demo 1: Linear regression + visualization
#
# Why this exists:
# - Regression quantifies the relationship between variables.
# - Visualizing the data alongside the fitted line helps validate that a linear
#   model is a reasonable first approximation and reveals outliers.


#   ITP321_AUTO_INSTALL=1
auto_install <- identical(Sys.getenv("ITP321_AUTO_INSTALL"), "1")

ensure_package <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    if (isTRUE(auto_install)) {
      install.packages(pkg)
    } else {
      stop(
        sprintf(
          "Missing dependency: %s. Install it with install.packages('%s')\nOr re-run with ITP321_AUTO_INSTALL=1 to auto-install.",
          pkg,
          pkg
        ),
        call. = FALSE
      )
    }
  }
}

ensure_package("ggplot2")

# ---- Data ----
# Built-in dataset keeps the script reproducible (no local file paths needed).
data(mtcars)

# ---- Functions ----
fit_mpg_vs_weight <- function(data = mtcars) {
  # We fit mpg ~ wt because weight is a commonly interpreted explanatory variable
  # for fuel efficiency (simple, interpretable model for demonstration).
  lm(mpg ~ wt, data = data)
}

plot_mpg_vs_weight <- function(data = mtcars) {
  # A scatter plot is the fastest way to detect trends, non-linearity, and outliers.
  ggplot2::ggplot(data, ggplot2::aes(x = wt, y = mpg)) +
    ggplot2::geom_point(alpha = 0.9, color = "#0072B2") +
    ggplot2::geom_smooth(method = "lm", se = TRUE, color = "#D55E00") +
    ggplot2::labs(
      title = "Fuel Efficiency vs Vehicle Weight (mtcars)",
      x = "Weight (1000 lbs)",
      y = "Miles per Gallon (mpg)"
    ) +
    ggplot2::theme_minimal()
}

# ---- Run analysis ----
model <- fit_mpg_vs_weight(mtcars)
print(summary(model))
print(plot_mpg_vs_weight(mtcars))
