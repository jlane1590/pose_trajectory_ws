// Auto-generated. Do not edit!

// (in-package pose_trajectory_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PoseTrajectoryPoint = require('./PoseTrajectoryPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PoseTrajectoryControllerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.axis_names = null;
      this.desired = null;
      this.actual = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('axis_names')) {
        this.axis_names = initObj.axis_names
      }
      else {
        this.axis_names = [];
      }
      if (initObj.hasOwnProperty('desired')) {
        this.desired = initObj.desired
      }
      else {
        this.desired = new PoseTrajectoryPoint();
      }
      if (initObj.hasOwnProperty('actual')) {
        this.actual = initObj.actual
      }
      else {
        this.actual = new PoseTrajectoryPoint();
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = new PoseTrajectoryPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseTrajectoryControllerState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [axis_names]
    bufferOffset = _arraySerializer.string(obj.axis_names, buffer, bufferOffset, null);
    // Serialize message field [desired]
    bufferOffset = PoseTrajectoryPoint.serialize(obj.desired, buffer, bufferOffset);
    // Serialize message field [actual]
    bufferOffset = PoseTrajectoryPoint.serialize(obj.actual, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = PoseTrajectoryPoint.serialize(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseTrajectoryControllerState
    let len;
    let data = new PoseTrajectoryControllerState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [axis_names]
    data.axis_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [desired]
    data.desired = PoseTrajectoryPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [actual]
    data.actual = PoseTrajectoryPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = PoseTrajectoryPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.axis_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += PoseTrajectoryPoint.getMessageSize(object.desired);
    length += PoseTrajectoryPoint.getMessageSize(object.actual);
    length += PoseTrajectoryPoint.getMessageSize(object.error);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_trajectory_controller/PoseTrajectoryControllerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6899e852098394fc0555a785cf9f2c05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string[] axis_names
    PoseTrajectoryPoint desired
    PoseTrajectoryPoint actual
    PoseTrajectoryPoint error  # Redundant, but useful
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: pose_trajectory_controller/PoseTrajectoryPoint
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    
    duration  time_from_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseTrajectoryControllerState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.axis_names !== undefined) {
      resolved.axis_names = msg.axis_names;
    }
    else {
      resolved.axis_names = []
    }

    if (msg.desired !== undefined) {
      resolved.desired = PoseTrajectoryPoint.Resolve(msg.desired)
    }
    else {
      resolved.desired = new PoseTrajectoryPoint()
    }

    if (msg.actual !== undefined) {
      resolved.actual = PoseTrajectoryPoint.Resolve(msg.actual)
    }
    else {
      resolved.actual = new PoseTrajectoryPoint()
    }

    if (msg.error !== undefined) {
      resolved.error = PoseTrajectoryPoint.Resolve(msg.error)
    }
    else {
      resolved.error = new PoseTrajectoryPoint()
    }

    return resolved;
    }
};

module.exports = PoseTrajectoryControllerState;
