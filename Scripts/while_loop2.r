bid <- 500; second <- 5
urgency <- c("5"="Plenty of time...",
             "4"="Place your bids!",
             "3"="Going once...",
             "2"="Going twice...",
             "1"="FINAL CHANCE!")

while (second >= 1) {
  current <- bid - (5 - second) * 15
  label <- urgency[as.character(second)]
  cat(sprintf("[%d] $%d %s %s\n",
              second, current, paste(rep("!",second),collapse=""), label))
  second <- second - 1
}