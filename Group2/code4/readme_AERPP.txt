Data and Code for:  Measuring the Macroeconomic Impact of Carbon Taxes
Principal Investigators: Gilbert E. Metcalf and James H. Stock

Files:
  EUctax_IRF_AERPP.do   
	main program. First thing it does is write Table 1 to a log file (not rounded). 
	Then produces .xslx file with Table 2 results
  EUctax_IRF_AERPP_out_r1.do   
	formatting and writing output, called by main file

NOTE: In March 2020 we found a data bug that makes minor changes to some EU2 results. 
So, the EU2 results in the out\AERPP_results.xlsx spreadsheet don't match Table 2 exactly for EU2, 
although they do match for the CT20 countries (countries with CT >= $20).
There are no qualitative changes. For example, the upper left estimate in Table 2 is 0.10 (SE = 0.43). Using
the corrected data, the result is (0.14) (SE = 0.41).