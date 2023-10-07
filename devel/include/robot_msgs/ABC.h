// Generated by gencpp from file robot_msgs/ABC.msg
// DO NOT EDIT!


#ifndef ROBOT_MSGS_MESSAGE_ABC_H
#define ROBOT_MSGS_MESSAGE_ABC_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose2D.h>

namespace robot_msgs
{
template <class ContainerAllocator>
struct ABC_
{
  typedef ABC_<ContainerAllocator> Type;

  ABC_()
    : a(false)
    , b(0)
    , c(0)
    , d(0)
    , e(0)
    , f(0)
    , str()
    , fl32(0.0)
    , fl64(0.0)
    , Pose2D()  {
    }
  ABC_(const ContainerAllocator& _alloc)
    : a(false)
    , b(0)
    , c(0)
    , d(0)
    , e(0)
    , f(0)
    , str(_alloc)
    , fl32(0.0)
    , fl64(0.0)
    , Pose2D(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _a_type;
  _a_type a;

   typedef int8_t _b_type;
  _b_type b;

   typedef int16_t _c_type;
  _c_type c;

   typedef int32_t _d_type;
  _d_type d;

   typedef int64_t _e_type;
  _e_type e;

   typedef uint8_t _f_type;
  _f_type f;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _str_type;
  _str_type str;

   typedef float _fl32_type;
  _fl32_type fl32;

   typedef double _fl64_type;
  _fl64_type fl64;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _Pose2D_type;
  _Pose2D_type Pose2D;





  typedef boost::shared_ptr< ::robot_msgs::ABC_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_msgs::ABC_<ContainerAllocator> const> ConstPtr;

}; // struct ABC_

typedef ::robot_msgs::ABC_<std::allocator<void> > ABC;

typedef boost::shared_ptr< ::robot_msgs::ABC > ABCPtr;
typedef boost::shared_ptr< ::robot_msgs::ABC const> ABCConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_msgs::ABC_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_msgs::ABC_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_msgs::ABC_<ContainerAllocator1> & lhs, const ::robot_msgs::ABC_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a &&
    lhs.b == rhs.b &&
    lhs.c == rhs.c &&
    lhs.d == rhs.d &&
    lhs.e == rhs.e &&
    lhs.f == rhs.f &&
    lhs.str == rhs.str &&
    lhs.fl32 == rhs.fl32 &&
    lhs.fl64 == rhs.fl64 &&
    lhs.Pose2D == rhs.Pose2D;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_msgs::ABC_<ContainerAllocator1> & lhs, const ::robot_msgs::ABC_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::ABC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::ABC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::ABC_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::ABC_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::ABC_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::ABC_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_msgs::ABC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7b05110c9cdadde365eb296f5368110c";
  }

  static const char* value(const ::robot_msgs::ABC_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7b05110c9cdadde3ULL;
  static const uint64_t static_value2 = 0x65eb296f5368110cULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_msgs::ABC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_msgs/ABC";
  }

  static const char* value(const ::robot_msgs::ABC_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_msgs::ABC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool a\n"
"int8 b\n"
"int16 c\n"
"int32 d\n"
"int64 e\n"
"uint8 f\n"
"\n"
"string str\n"
"float32 fl32\n"
"float64 fl64\n"
"\n"
"geometry_msgs/Pose2D Pose2D\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::robot_msgs::ABC_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_msgs::ABC_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
      stream.next(m.b);
      stream.next(m.c);
      stream.next(m.d);
      stream.next(m.e);
      stream.next(m.f);
      stream.next(m.str);
      stream.next(m.fl32);
      stream.next(m.fl64);
      stream.next(m.Pose2D);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ABC_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_msgs::ABC_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_msgs::ABC_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    Printer<int8_t>::stream(s, indent + "  ", v.b);
    s << indent << "c: ";
    Printer<int16_t>::stream(s, indent + "  ", v.c);
    s << indent << "d: ";
    Printer<int32_t>::stream(s, indent + "  ", v.d);
    s << indent << "e: ";
    Printer<int64_t>::stream(s, indent + "  ", v.e);
    s << indent << "f: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.f);
    s << indent << "str: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.str);
    s << indent << "fl32: ";
    Printer<float>::stream(s, indent + "  ", v.fl32);
    s << indent << "fl64: ";
    Printer<double>::stream(s, indent + "  ", v.fl64);
    s << indent << "Pose2D: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.Pose2D);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_MSGS_MESSAGE_ABC_H
