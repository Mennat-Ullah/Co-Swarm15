#include "ros/ros.h"
#include "chapter7_tutorials/Twist.h"
#include "chapter7_tutorials/Neighbor.h"


class Movement
{
    private:
        double walk_vel_;
        double run_vel_;
        double yaw_rate_;
        double yaw_rate_run_;
        chapter7_tutorials::Twist msg;
        
  	double speed;
  	double max_tv;
  	double turn;
  	double max_rv;
        ros::NodeHandle n;
        ros::Publisher pub;

    public:
        Movement();
        
        ~Movement();
        
        void stopRobot();

	void North();
	
	void South();
	
	void West();
	
	void East();
	
// -------------------------------
	void West_North();
	
	void West_South();
	
	void East_North();
	
	void East_South();
	
};


