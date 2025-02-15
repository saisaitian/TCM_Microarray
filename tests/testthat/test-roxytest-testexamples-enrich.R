# Generated by roxytest: Do not edit by hand!

# File R/enrich.R: @testexamples

test_that("Function tcm.EnrichGO() @ L352", {
  
  data("AnalyzedDEG")
  one_report <- tcm.LoadAnalyzedDEG(1)
  deg <- subset(one_report, abs(logFC) > 1 & P.Value < 0.05)
  go <- tcm.EnrichGO(deg, p.cutoff = 0.05, p.adj.cutoff = 0.5, n.path = 10)
  expect_is(go, "data.frame")
})

