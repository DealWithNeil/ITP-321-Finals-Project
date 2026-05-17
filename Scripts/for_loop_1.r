# Staircase Pattern Builder
# Each step adds one more star than the last

cat("Building your staircase...\n\n")

total_steps <- 10
staircase <- ""

for (step in 1:total_steps) {
  stars <- paste(rep("*", step), collapse=" ")
  step_num <- formatC(step, width=2, flag=" ")
  staircase <- paste0(staircase,
    "Step ", step_num, " | ", stars, "\n")
}

cat(staircase)
cat("\nTotal stars used:", sum(1:total_steps), "\n")