using Plots
using DataFrames
using CSV

#theme(:solarized_light)

d = CSV.read("techdata.csv", DataFrame)

scatter(d.Years_Exp, d.Annual_Gross_Pay, label = ["Salary (USD)"]; palette = :algae)

savefig("salarydata.png")
