// Auto-generated. Do not edit!

// (in-package robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ABC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
      this.c = null;
      this.d = null;
      this.e = null;
      this.f = null;
      this.str = null;
      this.fl32 = null;
      this.fl64 = null;
      this.Pose2D = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = false;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = 0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0;
      }
      if (initObj.hasOwnProperty('e')) {
        this.e = initObj.e
      }
      else {
        this.e = 0;
      }
      if (initObj.hasOwnProperty('f')) {
        this.f = initObj.f
      }
      else {
        this.f = 0;
      }
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = '';
      }
      if (initObj.hasOwnProperty('fl32')) {
        this.fl32 = initObj.fl32
      }
      else {
        this.fl32 = 0.0;
      }
      if (initObj.hasOwnProperty('fl64')) {
        this.fl64 = initObj.fl64
      }
      else {
        this.fl64 = 0.0;
      }
      if (initObj.hasOwnProperty('Pose2D')) {
        this.Pose2D = initObj.Pose2D
      }
      else {
        this.Pose2D = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ABC
    // Serialize message field [a]
    bufferOffset = _serializer.bool(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.int8(obj.b, buffer, bufferOffset);
    // Serialize message field [c]
    bufferOffset = _serializer.int16(obj.c, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.int32(obj.d, buffer, bufferOffset);
    // Serialize message field [e]
    bufferOffset = _serializer.int64(obj.e, buffer, bufferOffset);
    // Serialize message field [f]
    bufferOffset = _serializer.uint8(obj.f, buffer, bufferOffset);
    // Serialize message field [str]
    bufferOffset = _serializer.string(obj.str, buffer, bufferOffset);
    // Serialize message field [fl32]
    bufferOffset = _serializer.float32(obj.fl32, buffer, bufferOffset);
    // Serialize message field [fl64]
    bufferOffset = _serializer.float64(obj.fl64, buffer, bufferOffset);
    // Serialize message field [Pose2D]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.Pose2D, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ABC
    let len;
    let data = new ABC(null);
    // Deserialize message field [a]
    data.a = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [c]
    data.c = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [e]
    data.e = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [f]
    data.f = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [str]
    data.str = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fl32]
    data.fl32 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fl64]
    data.fl64 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Pose2D]
    data.Pose2D = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.str);
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_msgs/ABC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b05110c9cdadde365eb296f5368110c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool a
    int8 b
    int16 c
    int32 d
    int64 e
    uint8 f
    
    string str
    float32 fl32
    float64 fl64
    
    geometry_msgs/Pose2D Pose2D
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ABC(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = false
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    if (msg.c !== undefined) {
      resolved.c = msg.c;
    }
    else {
      resolved.c = 0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0
    }

    if (msg.e !== undefined) {
      resolved.e = msg.e;
    }
    else {
      resolved.e = 0
    }

    if (msg.f !== undefined) {
      resolved.f = msg.f;
    }
    else {
      resolved.f = 0
    }

    if (msg.str !== undefined) {
      resolved.str = msg.str;
    }
    else {
      resolved.str = ''
    }

    if (msg.fl32 !== undefined) {
      resolved.fl32 = msg.fl32;
    }
    else {
      resolved.fl32 = 0.0
    }

    if (msg.fl64 !== undefined) {
      resolved.fl64 = msg.fl64;
    }
    else {
      resolved.fl64 = 0.0
    }

    if (msg.Pose2D !== undefined) {
      resolved.Pose2D = geometry_msgs.msg.Pose2D.Resolve(msg.Pose2D)
    }
    else {
      resolved.Pose2D = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

module.exports = ABC;
