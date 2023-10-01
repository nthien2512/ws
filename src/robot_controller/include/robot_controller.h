#include "ros/ros.h"
#include <nav_msgs/Path.h>
#include <geometry_msgs/Pose2D.h>
#include <geometry_msgs/Twist.h>
#include <std_srvs/SetBool.h>

class RobotController
{
    private:
        ros::NodeHandle nh_;
        nav_msgs::Path path_;
        geometry_msgs::Pose2D robot_pose_;
        
        ros::Subscriber path_sub_,robot_pose_sub_;
        ros::Publisher cmd_vel_pub_;

        ros::ServiceServer enaber_srv_;
        bool enable_moving = false;

    public:
        RobotController()
        {
            path_sub_=nh_.subscribe("path", 1, &RobotController::pathCB,this);
            robot_pose_sub_=nh_.subscribe("robot_pose", 1, &RobotController::robotPoseCB,this);
            cmd_vel_pub_= nh_.advertise<geometry_msgs::Twist>("cmd_vel",1);

            enaber_srv_ = nh_.advertiseService("enable_moving", &RobotController::enableCB, this);
        }
        ~RobotController()
        {
        }
        void pathCB(const nav_msgs::Path& path)
        {
            path_=path;
        }
        void robotPoseCB(const geometry_msgs::Pose2D& rbp)
        {
            robot_pose_=rbp;
            ROS_INFO_STREAM("Robot pose:" << rbp.x << "-" << rbp.y);
         
        }
        void execute()
        {
            
            geometry_msgs::Twist vel;
            if (enable_moving) {
                vel.linear.x=1.0; //m/s
                vel.angular.z=1.0; //rad/s
            } else {
                vel.linear.x=0.0; //m/s
                vel.angular.z=0.0; //rad/s
            }
            cmd_vel_pub_.publish(vel);

        }
        bool enableCB(std_srvs::SetBool::Request& req, std_srvs::SetBool::Response& res) {
            enable_moving = req.data;
            if (enable_moving) {
                ROS_INFO_STREAM("Enable Moving");
            } else {
                ROS_INFO_STREAM("Disable Moving");
            }
            res.success = true;
            res.message = "OK";
            return true;
        }
};


