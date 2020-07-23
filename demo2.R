library("sageseqr")

# Set up data ----

metadata <- data.frame(
  batch = c("1", "2", "1", "2"),
  diagnosis = c("dx", "dx", "ct", "ct"),
  stringsAsFactors = TRUE,
  row.names = c("S1", "S2", "S3", "S4")
)

counts <- matrix(
  sample(0:100, size = 12),
  ncol = 4,
  dimnames = list(
    c("ENSG1", "ENSG2", "ENSG5"), 
    c("S1", "S2", "S3", "S4")
  )
)

biomart_results <- data.frame(
  length = c(400, 400, 400),
  row.names = c("ENSG1", "ENSG2", "ENSG5")
)

# Differential expression ----

de <- differential_expression(
  counts,
  counts,
  md = metadata,
  model_variables = c("batch"),
  primary_variable = c("diagnosis"),
  biomart_results = biomart_results
)

library("variancePartition")

de <- differential_expression(
  counts,
  counts,
  md = metadata,
  model_variables = c("batch"),
  primary_variable = c("diagnosis"),
  biomart_results = biomart_results
)
