python_binary(
    name = 'sample',
    main = 'sample.py',
    deps = [
        ":lib",
    ]
)

python_library(
    name = "lib",
    srcs = glob(["*.py"], exclude=["sample.py"]), 
)
