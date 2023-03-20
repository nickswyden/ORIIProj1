/*********************************************
 * OPL 22.1.0.0 Model
 * Author: nick
 * Creation Date: Mar 14, 2023 at 10:23:00 AM
 *********************************************/
//given information

range city = 1..4;
range dept = 1..4;
range month = 1..12;

float nurse_demand[month,dept] = [[50,58,40,42,30,37,45,46,35,36,45,44],
	[63,62,55,50,48,55,60,65,75,80,63,65],
	[135,155,125,120,115,120,100,80,95,109,116,120],
	[70,85,75,80,60,67,78,68,64,70,60,45]];

float nurse_cost[city,dept] = [[4550,4450,4500,4650],
	[4150,4100,4450,4200],
	[3950,3650,4100,3700],
	[4350,4050,4050,4200]];

float dept_cost[city,dept] = [[32000,41000,35000,39000],
	[29000,32000,30000,26000],
	[26000,28000,25000,27000],
	[32000,34000,33000,31000]];


dvar int+ no_full_time[city,dept,month];
dvar int+ no_part_time[city,dept,month];
dvar int+ department[city,dept];

minimize sum(i in city, j in dept, k in month) department[i,j] * ((no_full_time[i,j,k] * nurse_cost[i,j]) + (no_part_time[i,j,k] * (1.2 * nurse_cost[i,j])));

subject to {
  
  
  
}