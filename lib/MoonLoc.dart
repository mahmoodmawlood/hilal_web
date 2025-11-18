import 'dart:math';
import 'dart:io';
//print(Fruits[2]);
List<double> moon(int IY, int M, double D, int hr, int MIN, double LONG, double FI, double zone){
  List<int> maxdays =[31,28,31,30,31,30,31,31,30,31,30,31];
  List<int>values = [0,2,2,0,0,0,2,2,2,2,0,1,0,2,0,0,4,0,4,2,2,1,1,2,2,4,2,0,2,2,1,2, 
		0,0,2,2,2,4,0,3,2,4,0,2,2,2,4,0,4,1,2,0,1,3,4,2,0,1,2,2, 
		0,0,0,0,1,0,0,-1,0,-1,1,0,1,0,0,0,0,0,0,1,1,0,1,-1,0,0,0,1,0,-1,0,-2, 
		1,2,-2,0,0,-1,0,0,1,-1,2,2,1,-1,0,0,-1,0,1,0,1,0,0,-1,2,1,0,0, 
		1,-1,0,2,0,0,-2,-1,1,0,-1,0,1,0,1,1,-1,3,-2,-1,0,-1,0,1,2,0,-3,-2,-1,-2,1,0, 
		2,0,-1,1,0,-1,2,-1,1,-2,-1,-1,-2,0,1,4,0,-2,0,2,1,-2,-3,2,1,-1,3,-1, 
		0,0,0,0,0,2,0,0,0,0,0,0,0,-2,2,-2,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0, 
		0,0,0,-2,2,0,2,0,0,0,0,0,0,-2,0,0,0,0,-2,-2,0,0,0,0,0,0,0,-2];
  int rows = 60;
  int cols = 4;
  List<List<int>> IARG1 = List.generate(rows, (i) => List.filled(cols, 0));
  for (int i = 0; i < values.length; i++) {
    int row = i % rows;
    int col = i ~/ rows;
    IARG1[row][col] = values[i];
  }
  List<int> values1 = [0,0,0,2,2,2,2,0,2,0,2,2,2,2,2,2,2,0,4,0,0,0,1,0,0,0,1,0,4,4, 
		0,4,2,2,2,2,0,2,2,2,2,4,2,2,0,2,1,1,0,2,1,2,0,4,4,1,4,1,4,2, 
		0,0,0,0,0,0,0,0,0,0,-1,0,0,1,-1,-1,-1,1,0,1,0,1,0,1,1,1,0,0,0,0, 
		0,0,0,0,-1,0,0,0,0,1,1,0,-1,-2,0,1,1,1,1,1,0,-1,1,0,-1,0,0,0,-1,-2, 
		0,1,1,0,-1,-1,0,2,1,2,0,-2,1,0,-1,0,-1,-1,-1,0,0,-1,0,1,1,0,0,3,0,-1, 
		1,-2,0,2,1,-2,3,2,-3,-1,0,0,1,0,1,1,0,0,-2,-1,1,-2,2,-2,-1,1,1,-1,0,0, 
		1,1,-1,-1,1,-1,1,1,-1,-1,-1,-1,1,-1,1,1,-1,-1,-1,1,3,1,1,1,-1,-1,-1,1,-1,1, 
		-3,1,-3,-1,-1,1,-1,1,-1,1,1,1,1,-1,3,-1,-1,1,-1,-1,1,-1,1,-1,-1,-1,-1,-1,-1,1];
  List<List<int>> IARG2 = List.generate(rows, (i) => List.filled(cols, 0));
    for (int i = 0; i < values1.length; i++) {
    int row = i % rows;
    int col = i ~/ rows;
    IARG2[row][col] = values1[i];
  }    
  List<double> SIN1 = [6288774.00, 1274027.00,658314.00,213618.00,-185116.00,-114332.00,58793.00, 
		57066.00, 53322.00,45758.00,-40923.00,-34720.00,-30383.00,15327.00,-12528.00,10980.00, 
		10675.00,10034.00,8548.00,-7888.00,-6766.00,-5163.00,4987.00,4036.00,3994.00, 
		3861.00,3665.00,-2689.00,-2602.00,2390.00,-2348.00,2236.00,-2120.00,-2069.00, 
		2048.00,-1773.00,-1595.00,1215.00,-1110.00,-892.00,-810.00,759.00,-713.00,-700.00, 
		691.00, 596.00,549.00,537.00,520.00,-487.00,-399.00,-381.00,351.00,-340.00,330.00, 
		327.00,-323.00,299.00,294.00, 0.00];
  
  List<double> COS1 = [-20905355.00,-3699111.00,-2955968.00,-569925.00,48888.00,-3149.00,246158.00, 
		-152138.00,-170733.00,-204586.00,-129620.00,108743.00,104755.00,10321.00,0.00, 
		79661.00,-34782.00,-23210.00,-21636.00,24208.00,30824.00,-8379.00,-16675.00,-12831.00, 
		-10445.00,-11650.00,14403.00,-7003.00,0.00,10056.00,6322.00,-9884.00,5751.00,0.00, 
		-4950.00,4130.00,0.00,-3958.00,0.00,3258.00,2616.00,-1897.00,-2117.00,2354.00,0.00,0.00, 
		-1423.00,-1117.00,-1571.00,-1739.00,0.00,-4421.00,0.00,0.00,0.00,0.00,1165.00,0.00,0.00, 
		8752.00];
  
  List<double> SIN2 = [5128122.00, 280602.00,277693.00,173237.00,55413.00,46271.00,32573.00,17198.00,9266.00, 
		8822.00,8216.00,4324.00,4200.00,-3359.00,2463.00,2211.00,2065.00,-1870.00,1828.00,-1794.00, 
		-1749.00,-1565.00,-1491.00,-1475.00,-1410.00,-1344.00,-1335.00,1107.00,1021.00,833.00,777.00, 
		671.00,607.00,596.00,491.00,-451.00,439.00,422.00,421.00,-366.00,-351.00,331.00,315.00,302.00, 
		-283.00,-229.00,223.00,223.00,-220.00,-220.00,-185.00,181.00,-177.00,176.00,166.00,-164.00, 
		132.00,-119.00,115.00,107.00];
  
  List<int> values2 = [0,-2,0,0,0,0,-2,0,0,-2,-2,-2,0,2,0,2,0,0,-2,0,2,0,0,-2,0,-2,0,0,2,-2,0, 
		-2,0,0,2,2,0,-2,0,2,2,-2,-2,2,2,0,-2,-2,0,-2,-2,0,-1,-2,1,0,0,-1,0,0,2,0,2, 
		0,0,0,0,1,0,1,0,0,-1,17*0,2,0,2,1,0,-1,0,0,0,1,1,-1,6*0,-1,-1,0,0,0,1,0,0,1,0,0,0, 
		-1,1,-1,-1,0,-1, 
		5*0,1,0,0,1,0,1,0,-1,0,1,-1,-1,1,2,-2,0,2,2,1,0,0,-1,0,-1,0,0, 
		1,0,2,-1,1,0,1,0,0,1,2,1,-2,0,1,0,0,2,2,0,1,1,0,0,1,-2,1,1,1,-1,3,0, 
		0,2,2,0,0,0,2,2,2,2,0,2,2,0,0,2,0,2,0,2,2,2,0,2,2,2,2,0,0,2,0, 
		0,0,-2,2,2,2,0,2,2,0,2,2,0,0,0,2,0,2,0,2,-2,0,0,0,2,2,0,0,2,2,2,2, 
		1,2,2,2,0,0,2,1,2,2,0,1,2,0,1,2,1,1,0,1,2,2,0,2,0,0,1,0,1,2,1, 
		1,1,0,1,2,2,0,2,1,0,2,1,1,1,0,1,1,1,1,1,0,0,0,0,0,2,0,0,2,2,2,2];
  rows = 63;
  cols = 5;
  List<List<int>> IARG22 = List.generate(rows, (i) => List.filled(cols, 0));
  for (int i = 0; i < values2.length; i++) {
    int row = i % rows;
    int col = i ~/ rows;
    IARG22[row][col] = values2[i];
  }
  
  List<double> values3 = [-171996.00,-13187.00,-2274.00,2062.00,1426.00,712.00,-517.00,-386.00,-301.00, 
		217.00,-158.00,129.00,123.00,63.00,63.00,-59.00,-58.00,-51.00,48.00,46.00,-38.00, 
		-31.00,29.00,29.00,26.00,-22.00,21.00,17.00,16.00,-16.00,-15.00, 
		-13.00,-12.00,11.00,-10.00,-8.00,7.00,-7.00,-7.00,-7.00,6.00,6.00,6.00,-6.00,-6.00, 
		5.00,-5.00,-5.00,-5.00,4.00,4.00,4.00,-4.00,-4.00,-4.00,3.00,...List.filled(7,-3.00), 
		-174.200,-1.600,-.200,.200,-3.400,.100,1.200,-.400,0.00,-.500,0.00,.100,0.00,0.00,.100, 
		0.00,-.100,...List.filled(10,0.00),-.100,0.00,.100,...List.filled(33,0.00)];

  rows = 63;
  cols = 2;
  List<List<double>> SIN22 = List.generate(rows, (i) => List.filled(cols, 0));
  for (int i = 0; i < values3.length; i++) {
    int row = i % rows;
    int col = i ~/ rows;
    SIN22[row][col] = values3[i];
  }

  List<double> values4 = [92025.00,5736.00,977.00,-895.00,54.00,-7.00,224.00,200.00,129.00,-95.00,0.00,-70.00, 
		-53.00,0.00,-33.00,26.00,32.00,27.00,0.00,-24.00,16.00,13.00,0.00,-12.00,0.00,0.00,-10.00, 
		0.00,-8.00,7.00,9.00, 
		7.00,6.00,0.00,5.00,3.00,-3.00,0.00,3.00,3.00,0.00,-3.00,-3.00,3.00,3.00,0.00,3.00,3.00,3.00,
		...List.filled(14,0.00), 8.900,-3.100,-.500,.500,-.100,0.00,-.600,0.00,-.100,.300,...List.filled(53,0.00)];

  List<List<double>> COS22 = List.generate(rows, (i) => List.filled(cols, 0));
  for (int i = 0; i < values4.length; i++) {
    int row = i % rows;
    int col = i ~/ rows;
    COS22[row][col] = values4[i];
  }


  double Z = hr.toDouble();
    IY = int.parse(stdin.readLineSync()! ); // y = int.parse(input);
    print(' month ?');
    M = int.parse(stdin.readLineSync()!); //m = int.parse(input);
    print(' day ?');
    D = double.parse(stdin.readLineSync()!); //0 = int.parse(input);
    print(' hr ? in 24 hour format');
    Z = double.parse(stdin.readLineSync()!);
    print(' miniutes ?');
    MIN = int.parse(stdin.readLineSync()!);
 
  int YEAR = IY;    // FOR FURTHER CALCULATIONS 
  int MONTH = M;
  double TIM = Z;
	// convert time to Universal Time and minutes to hours 
	Z = Z + MIN/60.0 - zone;
	// Z = DINT(Z/100.D0) + DMOD(Z,100.D0)/60.D0 
	D = D + Z/24.0;
//   calculate DT IN SECOND for Dynamical Time and add it to Day D
	double DT = 0.0;
    double T = (IY - 2000.0)/100.0;
	if(IY < 948) {DT = 2177 + 497*T + 44.1*T*T;}
	if(IY > 948) {DT = 102+T*(102 + 25.3*T);} 
	if(IY>=2000 && IY<=2100) {DT = DT + 0.37*(IY - 2100);}
	D = D + DT/86400.0;
	if(M < 3) { 
		IY = IY - 1;
		M = M + 12;
	}
	int IA = (IY/100.0).floor();
	int IB = 2 - IA + (IA/4.00).floor();
	if(IY < 0) {IB = 0;}
	double JD = (365.250*(IY+4716)).toInt() + (30.60010*(M+1)).toInt() + D + IB - 1524.5;
//	JDE= INT(365.25D0*(IY+4716))+INT(30.6001D0*(M+1)) + D+DT/86400.D0 +IB - 1524.5
//	WRITE(*,*) JD
	T = (JD - 2451545.0)/36525.0;
	double THO = 280.460618370 + 360.98564736629*(JD-2451545.00)+ 
		0.0003879330*T*T - T*T*T/38710000.0;
	// Limit the value of THO between 0 and 360.
    THO = limit(THO);  // call function limit()
//!	PRINT*,' T  tho = ', T, THO
//! MOON ARGUMENTS	
	double LP = 218.31644770 + 481267.881234210*T - 0.00157860*T*T + T*T*T/538841.0 - T*T*T*T/65194000.0;
	double DM = 297.85019210 + 445267.11140340*T - 0.00188190*T*T + T*T*T/545868.0 - T*T*T*T/113065000.0;
	double MS = 357.52910920 + 35999.05029090*T - 0.00015360*T*T + T*T*T/24490000.0;
	double MP = 134.96339640 + 477198.86750550*T + 0.00874140*T*T + T*T*T/69699.0 -	T*T*T*T/14712000.0;
	double F = 93.27209500 + 483202.01752330*T - 0.00365390*T*T - T*T*T/35260000 + T*T*T*T/863310000.0;
    LP = limit(LP);
    DM = limit(DM);
    MS = limit(MS);
    MP = limit(MP);
    F = limit(F);
    double A1 = 119.750 + 131.8490*T;
	double A2 = 53.090 + 479264.2900*T;
	double A3 = 313.450 + 481266.4840*T;
    A1 = limit(A1);
    A2 = limit(A2);
    A3 = limit(A3);
    double E = 1.0 - 0.0025160*T - 0.00000740*T*T;

	double SUML = 0.0;
	double SUMR = 0.0;
	for(int I = 0; I<= 59; I++){
		double COFSIN = SIN1[I]*pow(E, IARG1[I][1].abs());
		double COFCOS = COS1[I]*pow(E, IARG1[I][1].abs());
		double ARG = IARG1[I][0]*DM + IARG1[I][1]*MS + IARG1[I][2]*MP + IARG1[I][3]*F;
        SUML = SUML + COFSIN*SIND(ARG);
		SUMR = SUMR + COFCOS*COSD(ARG);
    }
	double SUMB = 0.0;
	for(int I = 0; I <= 59; I++){
		double COFSIN = SIN2[I]*pow(E, IARG2[I][1].abs());
		double ARG = IARG2[I][0]*DM + IARG2[I][1]*MS + IARG2[I][2]*MP + IARG2[I][3]*F;
		SUMB = SUMB + COFSIN*SIND(ARG);
	}
// the additive terms to suml and sumb
	SUML = SUML + 3958.0*SIND(A1)+1962.0*SIND(LP-F) + 318.0*SIND(A2);
	SUMB = SUMB - 2235.0*SIND(LP)+ 382.0*SIND(A3) + 175.0*SIND(A1-F) + 
		175.0*SIND(A1+F) + 127.0*SIND(LP-MP) - 115.0*SIND(LP+MP);
	double LAMDA = LP + SUML/1.0e6;
	double BETA = SUMB/1.0e6;
	double DELTA = 385000.560 + SUMR/1000.0;
// Chapter 22
	DM = 297.850360 + 445267.1114800*T - 0.00191420*T*T + T*T*T/189474.0;
	MS = 357.527720 + 35999.0503400*T - 0.00016030*T*T - T*T*T/300000.0;
	MP = 134.962980 + 477198.8673980*T + 0.00869720*T*T + T*T*T/56250.0;
	F  = 93.271910 + 483202.0175380*T - 0.00368250*T*T + T*T*T/327270.0;
	double OM = 125.044520 - 1934.1362610*T + 0.00207080*T*T + T*T*T/450000.0;
	double SUM1 = 0.0;
	double SUM2 = 0.0;
	for( int I = 1; I<= 62; I++){
		double COFSIN = SIN22[I][0]+SIN22[I][1]*T;
		double COFCOS = COS22[I][0]+COS22[I][1]*T;
		double ARG = IARG22[I][0]*DM + IARG22[I][1]*MS + IARG22[I][2]*MP + IARG22[I][3]*F +   
			  IARG22[I][4]*OM;
		SUM1 = SUM1 + COFSIN*SIND(ARG);
		SUM2 = SUM2 + COFCOS*COSD(ARG);
	}
	double DEPSI = SUM1/10000.0;		// IN SECONDS
	double DEPSILON  = SUM2/10000.0;   // IN SECONDS
	double U = T/100.0;
	double EPSO = 21.4480 + U*(-4680.930 + U*(-1.550 + U*(1999.250 + U*(-51.380 + 
					U*(-249.670 + U*(-39.050 + U*(7.120 + U*(27.870 + 
					U*(5.790 + U*2.450)))))))));		// THIS IS SECONDS' PART
	EPSO = EPSO + 23.0*3600.0 + 26.0*60.0;			// EPSO IN SECONDS
	double EPS  = (EPSO + DEPSILON)/3600.0;     	//      EPS IN DEG
// Chapter 13
// Azimuth and Elevation of moon
	LAMDA = LAMDA + DEPSI/3600.0;
	double ALFA = ATAN2D(SIND(LAMDA)*COSD(EPS)-TAND(BETA)*SIND(EPS),COSD(LAMDA));
	double DEL  = ASIND(SIND(BETA)*COSD(EPS) + COSD(BETA)*SIND(EPS)*SIND(LAMDA));
	double H = THO + LONG - ALFA;  // LONg IS OBSERVER LONGITUDE AND FI IS HIS LATITUDE, BOTH MUST BE KNOWN
	double AZIMUTH = ATAN2D(SIND(H),(COSD(H)*SIND(FI) - TAND(DEL)*COSD(FI)));
	double ALTITUDE  = ASIND(SIND(FI)*SIND(DEL)+COSD(FI)*COSD(DEL)*COSD(H));
	AZIMUTH = (AZIMUTH*100).round()/100;
	ALTITUDE = (ALTITUDE*100).round()/100;
//	print('----------------------------------------');
//	print('--------------MOON LOCATION-------------');
//	print('----------------------------------------');
//    print('year $YEAR month $MONTH  day $D');
//    print('At Local time $TIM');
//    print('Azimoth: ${AZIMUTH+180.0}');
//    print('Altitude $ALTITUDE');

	//WRITE(*,'(I6,",",I2,",",I2)')INT(YEAR),INT(MONTH),INT(D)
	//WRITE(*,'("  AT LOCAL HOUR  ",I4)'),TIM
	//WRITE(*,'("  MOON AZIMUTH   = ",F7.2," DEG. NORTH")'), AZIMUTH  + 180.D0
	//WRITE(*,'("  MOON ALTITUDE  = ",F7.2," DEG.")') ALTITUDE

//!------------------------------------------------------------------
//! ...............ILLUMINATED FRACTION OF MOOD......................
//!...............          CHAPTER 48           ....................
//!...............      EQS. 48.1  AND 48.4      ....................
	double II = 180.0 - DM -6.2890*SIND(MP) + 2.10*SIND(MS) - 1.2740*SIND(2.0*DM-MP) 
		- 0.658*SIND(2.0*DM) - 0.2140*SIND(2.0*MP) - 0.110*SIND(DM);  
	double ILU = 0.50*(1.0 + COSD(II));
    ILU = (ILU*1000).round()/10;	// already converted to percent therefore not divided by 1000
//    print('Illium fraction ${ILU*100}  %');
//!	PRINT*,' ------------ILLUMINATED FRACTION OF MOON---------------'
//!	PRINT*,' '
//	WRITE(*,'("  ILLUMINATION ", F8.3,"%")')ILU*100.

return [AZIMUTH, ALTITUDE, ILU];
}

//        -----  PAUSE  FUNCTION ---
void pause(){
  print(' press Enter to continue ...');
  stdin.readLineSync();
} 
double limit(double x){
  do  {
    if(x >= 0.0 && x<= 360.0){return x;}
    if(x < 0.0) { x += 360.0;}
    if(x > 360.0){x -= 360.0;}
  } while (true);
}

double SIND(double x){
  return sin(x*pi/180.0);
}
double COSD(double x){
  return cos(x*pi/180.0);
}
double TAND(double x){
    return tan(x*pi/180.0);
}
double ATAN2D(double x, double y){
    return atan2(x, y)*180.0/pi;
}
double ASIND(double x){
    return asin(x)*180.0/pi;
}
double ACOSD(double x){
    return acos(x)*180.0/pi;
}