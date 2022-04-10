#package BrazilMet: Download and Processing of Automatic Weather Stations (AWS) Data of INMET-Brazil
install.packages('BrazilMet')
library(BrazilMet)
library(dplyr)

#information of the automatic weather station of INMET
automatic_stations <- see_stations_info()

#download of hourly data from automatic weather stations (AWS) of INMET-Brazil in daily aggregates
df <- download_AWS_INMET_daily(station = "A771",
                               start_date = "2020-01-01", 
                               end_date = "2021-03-31")


#all automatic weather station in "Nordeste" 
automatic_stations_NE <- c('A401', 'A402', 'A404', 'A406', 'A201', 'A202', 'A410', 'A408', 'A203', 'A407', 'A409', 'A305', 'A307', 'A303', 'A310', 'A311', 'A309', 'A312', 'A313', 'A418', 'A417', 'A413', 'A415', 'A319', 'A414', 'A325', 'A327', 'A326', 'A320', 'A321', 'A334', 'A332', 'A330', 'A335', 'A329', 'A213', 'A212', 'A333', 'A416', 'A337', 'A339', 'A336', 'A345', 'A348', 'A225', 'A221', 'A423', 'A442', 'A424', 'A419', 'A425', 'A431', 'A214', 'A426', 'A433', 'A439', 'A430', 'A352', 'A429', 'A432', 'A436', 'A233', 'A219', 'A215', 'A438', 'A220', 'A434', 'A421', 'A234', 'A235', 'A230', 'A241', 'A349', 'A342', 'A343', 'A364', 'A446', 'A444', 'A365', 'A248', 'A450', 'A448', 'A452', 'A247', 'A216', 'A453', 'A370', 'A371', 'A252', 'A456', 'A375', 'A374', 'A458', 'A254', 'A255', 'A256')

df_stations <- automatic_stations %>% filter(OMM %in% automatic_stations_NE)


#https://search.r-project.org/CRAN/refmans/BrazilMet/html/00Index.html
#https://github.com/FilgueirasR/BrazilMet/blob/master/R/daily_download_AWS_INMET.R
#https://bdmep.inmet.gov.br/#