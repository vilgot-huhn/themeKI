.onAttach <- function(libname, pkgname) {
  sysfonts::font_add_google("DM Sans")
  packageStartupMessage('Message: Kindly report bugs to vilgot.huhn@ki.se / If you get "warning()" messages when using the theme you may need to re-run sysfonts::font_add_google("DM Sans") this R session in order to get the correct font')
}
