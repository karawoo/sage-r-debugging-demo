# Debugging demo

2020-07-24 code review meeting

Repo contains two debugging examples: 
* `demo1.R` gives a toy demonstration of `traceback()`, `debug()`, and
  `browser()` using functions defined in `functions.R`
* `demo2.R` is a real-world example of debugging code in someone else's package

To recreate the issue in demo 2, you'll need specific package versions. Run the
following in this repo to get the right versions:

```r
renv::restore()
```
