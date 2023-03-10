/*********************************************
 * OPL 22.1.0.0 Model
 * Author: anafs
 * Creation Date: 13/12/2022 at 05:35:38
 *********************************************/
/*********************************************
 * OPL 22.1.0.0 Model
 * Author: anafs
 * Creation Date: 13/12/2022 at 04:59:03
 *********************************************/
//Input parameters
int nStations = ...;
range stations = 1..nStations;
float d[stations][stations] = ...;

//Decision variables
dvar boolean x[stations][stations]; 
									  
dvar boolean y[stations];			
									 

//Objective function
minimize sum(i in stations) y[i];			

//Constraints
subject to {
	forall(j in stations) 
		sum(i in stations) x[i][j] >= 1;	
	y[16]==1;
	y[17]==1;
	y[18]==1;
	y[19]==1;
	y[20]==1;
	
	forall(i,j in stations){
		x[i][j] <= y[i];					
		d[i][j]*x[i][j] <= 600;				
	}
}
