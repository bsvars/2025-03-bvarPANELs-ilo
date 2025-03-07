
devtools::install_github("bsvars/bvarPANELs")

library(bvarPANELs) # load the package

spec = specify_bvarPANEL$new( # specify the model
  ilo_dynamic_panel,
  exogenous = ilo_exogenous_variables,
  stationary = c(FALSE, FALSE, FALSE, TRUE),
  type = c("real", "rate", "rate", "rate")
)

burn = estimate(spec, S = 10000) # estimate the model
post = estimate(burn, S = 10000) # estimate the model