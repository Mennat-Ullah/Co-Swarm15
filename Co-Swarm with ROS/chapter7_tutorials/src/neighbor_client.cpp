#include "ros/ros.h"
#include "chapter7_tutorials/Neighbor.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "neighbor_client");
  ros::NodeHandle n;

  ros::ServiceClient client = n.serviceClient<chapter7_tutorials::Neighbor>("getNeighbor");

  chapter7_tutorials::Neighbor srv;
  
  if (client.call(srv))
  {
	//for(int i =  0 ; i< 3 ; ++ i)
		//for(int j= 0 ; j< 3 ; ++ j)

	ROS_INFO("Neighbor00 = %d\n" , srv.response.Neighbor00 ) ;
	ROS_INFO("Neighbor01 = %d\n" , srv.response.Neighbor01 ) ;
	ROS_INFO("Neighbor02 = %d\n" , srv.response.Neighbor02 ) ;
	ROS_INFO("Neighbor10 = %d\n" , srv.response.Neighbor10 ) ; 
	ROS_INFO("Neighbor11 = %d\n" , srv.response.Neighbor11 ) ;
	ROS_INFO("Neighbor12 = %d\n" , srv.response.Neighbor12 ) ;
	ROS_INFO("Neighbor20 = %d\n" , srv.response.Neighbor20 ) ;
	ROS_INFO("Neighbor21 = %d\n" , srv.response.Neighbor21 ) ;
	ROS_INFO("Neighbor22 = %d\n" , srv.response.Neighbor22 ) ; 
    
  }
  else
  {
    ROS_ERROR("Failed to call service add_two_ints");
    return 1;
  }

  return 0;
}
