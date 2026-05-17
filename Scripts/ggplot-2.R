# Visualization Demo 1: Bar chart of category counts
#
# Why this exists:
# - A count plot quickly checks class balance and whether the dataset looks
#   consistent before doing deeper analysis.


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
data(iris)

# ---- Plot ----
ggplot2::ggplot(iris, ggplot2::aes(x = Species, fill = Species)) +
  # `geom_bar()` counts rows per species automatically (good for quick checks).
  ggplot2::geom_bar(width = 0.7, alpha = 0.9) +
  ggplot2::labs(
    title = "Count of Iris Species (iris)",
    x = "Species",
    y = "Count"
  ) +
  # Legend is redundant because categories are already on the x-axis.
  ggplot2::guides(fill = "none") +
  ggplot2::theme_minimal()
