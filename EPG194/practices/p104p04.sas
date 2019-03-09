***********************************************************;
*  LESSON 4, PRACTICE 4                                   *;
*    a) Create a new column named SqMiles by multiplying  *;
*       Acres by .0015625.                                *;
*    b) Create a new column named Camping as the sum of   *;
*       OtherCamping, TentCampers, RVCampers, and         *;
*       BackcountryCampers.                               *;
*    c) Format SqMiles and Camping to include commas and  *;
*       zero decimal places.                              *;
*    d) Modify the KEEP statement to include the new      *;
*       columns. Run the program.                         *;
***********************************************************;

data np_summary_update;
	set pg1.np_summary;
	*keep Reg ParkName DayVisits OtherLodging Acres;	
	*Add assignment statements;
	SqMiles = Acres*0.0015625;
	Camping = sum(OtherCamping, TentCampers, RVCampers, BackcountryCampers);
	format SqMiles Camping comma10.;
	keep Reg ParkName DayVisits OtherLodging Acres SqMiles Camping;	
run;

*note that the values for SqMiles and Camping in the first row are 1,014 and 6,375 respectively.;
