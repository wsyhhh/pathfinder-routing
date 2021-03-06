using Base.Test

tests = [ "solve" ]

print_with_color(:blue, "Running tests:\n")

for t in tests
  test_fn = "$t.jl"
  print_with_color(:green, "* $test_fn\n")
  include(joinpath(pwd(), test_fn))
end
