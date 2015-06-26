#include "ros/ros.h"
#include "sensor_msgs/LaserScan.h"
#include "chapter7_tutorials/Neighbor.h"
#include <sstream>
#include <geometry_msgs/Twist.h>

int Neighbor[3][3] = {0};
int sellsize = 3 ; // size in cm
void right(const sensor_msgs::LaserScan::ConstPtr& msg1)
{
	// for inti :
	 Neighbor[0][1] = Neighbor[0][2] =  Neighbor[1][2] = Neighbor[2][2] = Neighbor[2][1] = 0;
	// end of inti

	int i;
//ROS_INFO("I heard 2: [%f]", sizeof(msg1->ranges));
// ^ == degree
// first sell : 0^ - 20^
	for(i=0;i<60;i+=2)
	{
		if(msg1->ranges[i] < sellsize)
		   Neighbor[0][1] = 1;
	}

// second sell : 30^ - 70^
	for(i=90;i<210;i+=2)
	{
		if(msg1->ranges[i] < sellsize)
		   Neighbor[0][2] = 1;
	}

// third sell : 80^ - 110^
	for(i=240;i<330;i+=2)
	{
		if(msg1->ranges[i] < sellsize)
		   Neighbor[1][2] = 1;
	}

// fourth sell : 120^ - 150^
	for(i=360;i<450;i+=2)
	{
		if(msg1->ranges[i] < sellsize)
		   Neighbor[2][2] = 1;
	}

// fivfth sell : 160^ - 180^
	for(i=480;i<540;i+=2)
	{
		if(msg1->ranges[i] < sellsize)
		   Neighbor[2][1] = 1;
	}
// sixth & seventh & eighth not in rang

	// for test :
	int c= 0;
	for(int a=0 ; a<3 ; ++a)
	for(int m=0 ; m<3 ; ++m)
	ROS_INFO("Neighbor %d: [%d]", ++c , Neighbor[a][m]);
	// end of test

}

void left(const sensor_msgs::LaserScan::ConstPtr& msg2)
{
	int i;

// for inti  :
Neighbor[2][1]  = Neighbor[2][0] = Neighbor[1][0] = Neighbor[0][0] = Neighbor[0][1] = 0 ;
// end of inti

//ROS_INFO("I heard 2: [%f]", sizeof(msg1->ranges));
// ^ == degree
// first sell : 0^ - 20^
	for(i=0;i<60;i+=2)
	{
		if(msg2->ranges[i] < sellsize)
		   Neighbor[2][1] = 1;
	}

// second sell : 30^ - 70^
	for(i=90;i<210;i+=2)
	{
		if(msg2->ranges[i] < sellsize)
		   Neighbor[2][0] = 1;
	}

// third sell : 80^ - 110^
	for(i=240;i<330;i+=2)
	{
		if(msg2->ranges[i] < sellsize)
		   Neighbor[1][0] = 1;
	}

// fourth sell : 120^ - 150^
	for(i=360;i<450;i+=2)
	{
		if(msg2->ranges[i] < sellsize)
		   Neighbor[0][0] = 1;
	}

// fivfth sell : 160^ - 180^
	for(i=480;i<540;i+=2)
	{
		if(msg2->ranges[i] < sellsize)
		   Neighbor[0][1] = 1;
	}
// sixth & seventh & eighth not in rang

// for test :
int c= 0;
for(int a=0 ; a<3 ; ++a)
for(int m=0 ; m<3 ; ++m)
ROS_INFO("Neighbor %d: [%d]", ++c , Neighbor[a][m]);
// end of test

}


bool neighbor( chapter7_tutorials::Neighbor::Request &req , chapter7_tutorials::Neighbor::Response &res)
{
res.Neighbor00 = Neighbor[0][0] ;
res.Neighbor01 = Neighbor[0][1] ;
res.Neighbor02 = Neighbor[0][2] ;
res.Neighbor10 = Neighbor[1][0] ;
res.Neighbor11 = Neighbor[1][1] ;
res.Neighbor12 = Neighbor[1][2] ;
res.Neighbor20 = Neighbor[2][0] ;
res.Neighbor21 = Neighbor[2][1] ;
res.Neighbor22 = Neighbor[2][2] ; 
return true ;
}

int main1(int argc, char **argv)
{
ros::init(argc, argv, "Control_movement");
ros::NodeHandle n;
ros::Subscriber sub1 = n.subscribe("/base_scan/scan/1", 1000, right);
ros::Subscriber sub2 = n.subscribe("/base_scan/scan/2", 1000, left);

ros::ServiceServer N_service = n.advertiseService("getNeighbor" , neighbor);

ros::spin();
return 0;
}


