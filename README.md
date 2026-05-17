# ITP-321-Finals-Project
This project demonstrates core programming concepts in R (loops and functions), plus small examples of data visualization and basic data science workflows.

## Project structure
- `Data/`: datasets (if/when used)
- `Scripts/`: standalone R scripts (loop demos, function demos, ggplot demos, basic analysis)
- `Outputs/`: generated outputs (plots, exports, etc.)
- `Report/`: report files (R Markdown/Quarto, docs, etc.)

## How to run (recommended)
From the project root:
- `Rscript Scripts/datascience1.R`
- `Rscript Scripts/for_loop_1.r`

## Dependencies
- Many scripts use only base R.
- Some scripts require packages such as `ggplot2` and `dplyr`.
  - If a required package is missing, the script prints a clear message telling you what to install.
  - For instructors who want scripts to auto-install missing packages, run with `ITP321_AUTO_INSTALL=1`.
