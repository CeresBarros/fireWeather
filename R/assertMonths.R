assertMonths <- function(months, doAssertion = getOption("LandR.assertions", TRUE)) {
  if (doAssertion) {
    if (is.numeric(months)) {
      if (min(months) < 1 | max(months) > 12) {
        stop("months need to be [1,12] - one or more values")
      }
    } else {
      stop("months should be a numeric vector")
    }
  }
}
