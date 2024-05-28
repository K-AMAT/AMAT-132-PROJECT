if (!require('readxl')) install.packages('readxl'); library('readxl')
if (!require('fpp3')) install.packages('fpp3'); library('fpp3')
if (!require('stlplus')) install.packages('stlplus'); library('stlplus')
if (!require('tidyverse')) install.packages('tidyverse'); library('tidyverse')
if (!require('tseries')) install.packages('tseries'); library('tseries')
data = read_excel("E:/UPMIN BSAM 2022-2026/2023-2024 2nd Sem/AMAT 132/Final Project/Tourist Arrival Total with OFWs.xlsx")
data
Tourists<-data |>
  mutate (Month = 1:n()) |>
  gather (Year, value, -Month) |>
  arrange (Year, Month) 
Tourists<-ts(Tourists$value, start = c(2008, 1), frequency = 12)
Tourists
forecast::autoplot(Tourists)

