# Data Science Demo 2: Group summaries + reporting plot

# Why this exists:
# - Group summaries answer practical questions like: "How do categories compare?"
# - A plot communicates the comparison more clearly than a raw table.


#   ITP321_AUTO_INSTALL=1
auto_install <- identical(Sys.getenv("ITP321_AUTO_INSTALL"), "1")

ensure_packages <- function(pkgs) {
  missing_pkgs <- pkgs[!vapply(pkgs, requireNamespace, logical(1), quietly = TRUE)]
  if (length(missing_pkgs) == 0) {
    return(invisible(TRUE))
  }

  if (isTRUE(auto_install)) {
    install.packages(missing_pkgs)
    return(invisible(TRUE))
  }

  stop(
    sprintf(
      "Missing dependency(ies): %s.\nInstall with install.packages(c(%s))\nOr re-run with ITP321_AUTO_INSTALL=1 to auto-install.",
      paste(missing_pkgs, collapse = ", "),
      paste(sprintf("'%s'", missing_pkgs), collapse = ", ")
    ),
    call. = FALSE
  )
}

ensure_packages(c("dplyr", "ggplot2"))

# ---- Data ----
# Built-in dataset keeps the script portable and reproducible.
data(iris)

# ---- Functions ----
summarize_petal_length <- function(data = iris) {
  # Adding `n` makes the mean more interpretable (how much data supports it?).
  dplyr::as_tibble(data) |>
    dplyr::group_by(Species) |>
    dplyr::summarise(
      n = dplyr::n(),
      mean_petal_length = mean(Petal.Length, na.rm = TRUE),
      .groups = "drop"
    )
}

plot_avg_petal_length <- function(data = iris) {
  # A mean bar plot is a compact summary for categorical comparisons.
  ggplot2::ggplot(data, ggplot2::aes(x = Species, y = Petal.Length, fill = Species)) +
    ggplot2::stat_summary(fun = mean, geom = "col", width = 0.7, alpha = 0.9) +
    ggplot2::labs(
      title = "Average Petal Length per Species (iris)",
      x = "Species",
      y = "Petal Length"
    ) +
    ggplot2::guides(fill = "none") +
    ggplot2::theme_minimal()
}

# ---- Run analysis ----
print(summarize_petal_length(iris))
print(plot_avg_petal_length(iris))
