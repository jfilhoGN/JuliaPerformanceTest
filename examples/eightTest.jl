import Pkg
Pkg.activate(".")
using Stressify

#execute for the one VU for one iteration
Stressify.options(
    vus = 1,
    format = "vus-ramping",
    max_vus = 10,
    iterations = nothing,
    duration = 30.0 
)

results = Stressify.run_test(
    Stressify.http_get("https://httpbin.org/get"),
)
