#' Use JHU DSL Logo
#'
#' @param base_path Path to root directory
#' @param ... arguments to pass to \code{\link{dsl_badge}}
#'
#' @return Invisible TRUE
#' @export
#' @importFrom usethis use_build_ignore
use_dsl_logo = function(
  base_path = ".", ...) {
  logo = system.file("jhudsl_logo.png", package = "jhudsl")
  fname =  basename(logo)
  outfile = file.path(base_path, fname)
  usethis::use_build_ignore(
    files = fname,
    base_path = base_path)

  msg = paste0("Please add the following to your REAMDE.[R]md\n",
               dsl_badge(logo = fname, ...)
  )

  message(msg)
  file.copy(logo, outfile, overwrite = TRUE)
  return(invisible(TRUE))
}

