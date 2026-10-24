# Helpers for the wedding website.
# Kept separate so content rendering can be extended without cluttering index.Rmd.

html_escape <- function(x) {
  x <- as.character(x)
  x <- gsub("&", "&amp;", x, fixed = TRUE)
  x <- gsub("<", "&lt;", x, fixed = TRUE)
  x <- gsub(">", "&gt;", x, fixed = TRUE)
  x <- gsub('"', "&quot;", x, fixed = TRUE)
  x
}

# Example utility for future content sections:
format_date_fr <- function(date) {
  stopifnot(inherits(date, "Date"))
  months <- c("janvier", "février", "mars", "avril", "mai", "juin",
              "juillet", "août", "septembre", "octobre", "novembre", "décembre")
  paste(format(date, "%d"), months[as.integer(format(date, "%m"))],
        format(date, "%Y"))
}
