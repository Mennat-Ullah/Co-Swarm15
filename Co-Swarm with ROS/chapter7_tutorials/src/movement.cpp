#include "ros/ros.h"
#include "chapter7_tutorials/Twist.h"
#include "chapter7_tutorials/Neighbor.h"
#include "movement.h"


      Movement::Movement()
        {
  	pub = n.advertise<chapter7_tutorials::Twist>("cmd_vel", 1);
            ros::NodeHandle n_private("~");
            n_private.param("walk_vel", walk_vel_, 0.5);
            n_private.param("run_vel", run_vel_, 1.0);
            n_private.param("yaw_rate", yaw_rate_, 1.0);
            n_private.param("yaw_rate_run", yaw_rate_run_, 1.5);


            n_private.param("speed", speed, 1.0);
            n_private.param("max_tv", max_tv, 0.5);
            n_private.param("turn", turn, 0.0);
            n_private.param("max_rv", max_rv, 0.0);

        }
        
      Movement::~Movement() { 
			ROS_INFO("Stop");
			stopRobot();
	}
        
        void Movement::stopRobot()
        {
            msg.linear.x = 0.0;
            msg.angular.z = 0.0;
            pub.publish(msg);
        }

	void Movement::North()
	{	max_tv = walk_vel_;
                speed = 1;
                turn = 0;
    		msg.linear.x = speed * max_tv;
    		msg.angular.z = turn * max_rv;
		pub.publish(msg);
	}
	void Movement::South()
	{	max_tv = walk_vel_;
                speed = -1;
                turn = 0;
    		msg.linear.x = speed * max_tv;
    		msg.angular.z = turn * max_rv;
		pub.publish(msg);
	}
	void Movement::West()
	{	max_rv = yaw_rate_;
                speed = 0;
                turn = 1;
    		msg.linear.x = speed * max_tv;
    		msg.angular.z = turn * max_rv;
		pub.publish(msg);
	}
	void Movement::East()
	{	max_rv = yaw_rate_;
                speed = 0;
                turn = -1;
    		msg.linear.x = speed * max_tv;
    		msg.angular.z = turn * max_rv;
		pub.publish(msg);
	}
// -------------------------------
	void Movement::West_North()
	{	max_tv = walk_vel_;
                speed = 1;
                turn = 1;
    		msg.linear.x = speed * max_tv;
    		msg.angular.z = turn * max_rv;
		pub.publish(msg);
	}
	void Movement::West_South()
	{	max_tv = walk_vel_;
                speed = -1;
                turn = 1;
    		msg.linear.x = speed * max_tv;
    		msg.angular.z = turn * max_rv;
		pub.publish(msg);
	}
	void Movement::East_North()
	{	max_rv = yaw_rate_;
                speed = 1;
                turn = -1;
    		msg.linear.x = speed * max_tv;
    		msg.angular.z = turn * max_rv;
		pub.publish(msg);
	}
	void Movement::East_South()
	{	max_rv = yaw_rate_;
                speed = -1;
                turn = -1;
    		msg.linear.x = speed * max_tv;
    		msg.angular.z = turn * max_rv;
		pub.publish(msg);
	}


ErraticKeyboardTeleopNode* keyboard;
void messageCallback(const chapter7_tutorials::Move::ConstPtr& msg)
{
			if ( msg->M == 7)
				key.West();
			else if ( msg->M == 8)
				key.West_North();  
			else if ( msg->M == 6 )
				key.West_South();
			else if ( msg->M == 3 )
				key.East();
			else if ( msg->M == 2 )
				key.East_North();
			else if ( msg->M == 4 )
				key.East_South();
			else if ( msg->M == 5 )
				key.South();
			else if ( msg->M == 1 )
				key.North(); 
	
}
int main(int argc, char **argv)
{
  	ros::init(argc, argv, "movement");
	ErraticKeyboardTeleopNode key;

  ros::NodeHandle n;
  ros::Rate loop_rate(10);
  while (ros::ok())
  {
	//ros::ServiceClient client = n.serviceClient<chapter7_tutorials::Neighbor>("getNeighbor");
	//chapter7_tutorials::Neighbor srv;
/*	
if (client.call(srv))
	{
		ROS_INFO("Sum: %ld", (long int)srv.response.Neighbor00);	
		if(srv.response.Neighbor00==1)
		{
			ROS_INFO("Stop");
			 keyboard.Move_right();
		}
		else
		{
			ROS_INFO("move");
			keyboard.Move_forward();
		}
	}
	ros::spinOnce();
	loop_rate.sleep();
*/

ros::Subscriber sub = n.subscribe("message" , 1000 , messageCallback);
ros::spin();



  }

 return 0;
}

/*
void ErraticKeyboardTeleopNode::keyboardLoop()
{
    char c;
    double max_tv = walk_vel_;
    double max_rv = yaw_rate_;
    bool dirty = false;
    int speed = 0;
    int turn = 0;
    
    for(;;)
    {
        switch(c)
        {
            case KEYCODE_W:
                max_tv = walk_vel_;
                speed = 1;
                turn = 0;
                dirty = true;
                break;
            case KEYCODE_S:
                max_tv = walk_vel_;
                speed = -1;
                turn = 0;
                dirty = true;
                break;
            case KEYCODE_A:
                max_rv = yaw_rate_;
                speed = 0;
                turn = 1;
                dirty = true;
                break;
            case KEYCODE_D:
                max_rv = yaw_rate_;
                speed = 0;
                turn = -1;
                dirty = true;
                break;
                
            case KEYCODE_W_CAP:
                max_tv = run_vel_;
                speed = 1;
                turn = 0;
                dirty = true;
                break;
            case KEYCODE_S_CAP:
                max_tv = run_vel_;
                speed = -1;
                turn = 0;
                dirty = true;
                break;
            case KEYCODE_A_CAP:
                max_rv = yaw_rate_run_;
                speed = 0;
                turn = 1;
                dirty = true;
                break;
            case KEYCODE_D_CAP:
                max_rv = yaw_rate_run_;
                speed = 0;
                turn = -1;
                dirty = true;
                break;
                
            default:
                max_tv = walk_vel_;
                max_rv = yaw_rate_;
                speed = 0;
                turn = 0;
                dirty = false;
        }
        
        cmdvel_.linear.x = speed * max_tv;
        cmdvel_.angular.z = turn * max_rv;
        pub_.publish(cmdvel_);
    }
}
*/
