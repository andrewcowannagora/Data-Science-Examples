EXEC sp_execute_external_script@language = N'Python',@script = N'celsiusValues = InputDataSet.iloc[:,0]fahrenheitValues = (celsiusValues * 1.8) + 32df = pandas.DataFrame({"TempC":celsiusValues, "TempF":fahrenheitValues})OutputDataSet = df',@input_data_1 = N'SELECT CONVERT(float, Temperature) AS Temp FROM Warehouse.ColdRoomTemperatures;'WITH RESULT SETS (([Temp C] float, [Temp F] float));