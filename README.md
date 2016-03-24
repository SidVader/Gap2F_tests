# Gap2F_tests
***Easy: Install sybil, sybilSBML and RbioRXN from CRAN.

For sybilSBML had to install libSMBL 5.12.0
For RbioRXN had to install 3 packages from Bioconductor:
CheminneR, fmcsR, KEGGREST.

***Medium: Load the glycolysis file and identify which functions requires H2O. https://gist.github.com/ampinzonv/c763c7a9d147aecec721
As the file is not in SMBL file format and not in TSV format concluded that it was supposed to be manually solved.


"H2O[c] + NADP+[c] + acetaldehyde[c] => H+[c] + NADPH[c] + acetate[c]"
"H2O[m] + NAD+[m] + acetaldehyde[m] => H+[m] + NADH[m] + acetate[m]"
"H2O[c] + NADP+[c] + methylglyoxal[c] => H+[c] + NADPH[c] + pyruvate[c]"
"ATP[c] + H2O[c] + pyruvate[c] => AMP[c] + PEP[c] + Pi[c]"
"2-phospho-D-glycerate[c] <=> H2O[c] + PEP[c]"
"1,3-bisphospho-D-glycerate[c] + H2O[c] => 3-phospho-D-glycerate[c] + Pi[c]"
"2,3-bisphospho-D-glycerate[c] + H2O[c] => 3-phospho-D-glycerate[c] + Pi[c]"
"H2O[c] + fructose-1,6-bisphosphate[c] => Pi[c] + fructose-6-phosphate[c]"
"H2O[r] + glucose-6-phosphate[r] => Pi[r] + glucose[r]"
"H2O2[p] + ethanol[p] => 2 H2O[p] + acetaldehyde[p]"
"H+[c] + NADPH[c] + O2[c] + ethanol[c] => 2 H2O[c] + NADP+[c] + acetaldehyde[c]"

***Hard: Load the glycolysis file and identify which functions produce H2O as product.


"2-phospho-D-glycerate[c] <=> H2O[c] + PEP[c]"
"H2O2[p] + ethanol[p] => 2 H2O[p] + acetaldehyde[p]"
"H+[c] + NADPH[c] + O2[c] + ethanol[c] => 2 H2O[c] + NADP+[c] + acetaldehyde[c]"
