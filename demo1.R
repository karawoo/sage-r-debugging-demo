source(here::here("functions.R"))

# traceback() ----

f(1)
traceback()

# debug() ----

debug(h)
f(1)
undebug(h)
debugonce(h)
f(1)
f(2)

# browser() ----

f(1)

# see also: rstudio's breakpoints, options(error = recover)

# rlang tools ----

options(error = rlang::entrace)
f(1)
rlang::last_trace()
