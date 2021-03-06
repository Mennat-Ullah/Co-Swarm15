#include "ros/ros.h"
//#include "movement.h"
#include "Robot_Interface.h"
#include "chapter7_tutorials/Move.h"
#include "chapter7_tutorials/Neighbor.h"

int gcd(int a, int b) { return (b == 0 ? a : gcd(b, a%b)); }

const int row = 100, col = 100;

// direction : odd indices for moving diagonally, even ones for moving straight

int main(int argc, char **argv)
{

	srand(time(NULL));
	clock_t start = clock();

	ros::init(argc, argv, "main");
	ros::NodeHandle n;

	//Movement key ;
	ros::Publisher pub = n.advertise<chapter7_tutorials::Move>("message" , 1000);
	ros::Rate loop_rate(10);

	//Robot_Interface *rob = new Robot_Interface(row,col,0,0);
	point p_new = point(0,0);
	point p_old = point(0,0);
	double neighbor[3][3] ;
	while( p_new.first != -1 || p_new.second != -1 )
	{
		ros::ServiceClient client = n.serviceClient<chapter7_tutorials::Neighbor>("getNeighbor");
		chapter7_tutorials::Neighbor srv;
		chapter7_tutorials::Move msg;
		if (client.call(srv))
		{

			neighbor[0][0] = srv.response.Neighbor00;
			neighbor[0][1] = srv.response.Neighbor01;
			neighbor[0][2] = srv.response.Neighbor02;
			neighbor[1][0] = srv.response.Neighbor10;
			neighbor[1][1] = srv.response.Neighbor11;
			neighbor[1][2] = srv.response.Neighbor12;
			neighbor[2][0] = srv.response.Neighbor20;
			neighbor[2][1] = srv.response.Neighbor21;
			neighbor[2][2] = srv.response.Neighbor22;

			//p_new = rob->handle_interface(neighbor);
		


		int key ;
		int dx = p_new.first - p_old.first ;
		int dy = p_new.second - p_old.second ;
		if (dx == -1)
		{
			if ( dy == 0)
				key = 7;//West();
			else if ( dy == 1)
				key= 8 ; //.West_North();  
			else
				key = 6 ;//.West_South();
		}
		else if(dx == 1 )
		{
			if ( dy == 0)
				key = 3 ; //.East();
			else if ( dy == 1)
				key = 2 ;//.East_North();
			else
				key = 4 ;//.East_South();
		}
		else 
		{
			if ( dy == -1)
				key = 5 ;//.South();
			else if ( dy == 1)
				key = 1 ; //.North(); 
		}
		msg.M = key ;
		pub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
		p_old = p_new ;

		}
		

	}

	clock_t end = clock();
	double time_elapsed = double(end - start);
	cout << "Time to calculate the route (ms): " << time_elapsed << endl;
}




