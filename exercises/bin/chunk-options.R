source("../../bin/chunk-options.R")

## Overwrite figure paths
fix_fig_path <- function(pth) file.path("..", "..", pth)

knitr_fig_path <- function(prefix) {
    new_path <- paste0('../', opts_chunk$get("fig.path"),
                      prefix)
    opts_chunk$set(fig.path = new_path)
}

