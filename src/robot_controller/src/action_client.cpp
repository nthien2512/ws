#include <action_client.h>
int main(int argc, char ** argv)
{
    ros::init(argc, argv,"action_client");
    ActionClient ac;
    ac.execute();
    return 1;
}