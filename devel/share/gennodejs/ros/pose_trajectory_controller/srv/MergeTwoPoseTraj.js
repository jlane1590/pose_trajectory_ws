// Auto-generated. Do not edit!

// (in-package pose_trajectory_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PoseTrajectory = require('../msg/PoseTrajectory.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MergeTwoPoseTrajRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.traj1 = null;
      this.traj2 = null;
    }
    else {
      if (initObj.hasOwnProperty('traj1')) {
        this.traj1 = initObj.traj1
      }
      else {
        this.traj1 = new PoseTrajectory();
      }
      if (initObj.hasOwnProperty('traj2')) {
        this.traj2 = initObj.traj2
      }
      else {
        this.traj2 = new PoseTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MergeTwoPoseTrajRequest
    // Serialize message field [traj1]
    bufferOffset = PoseTrajectory.serialize(obj.traj1, buffer, bufferOffset);
    // Serialize message field [traj2]
    bufferOffset = PoseTrajectory.serialize(obj.traj2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MergeTwoPoseTrajRequest
    let len;
    let data = new MergeTwoPoseTrajRequest(null);
    // Deserialize message field [traj1]
    data.traj1 = PoseTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [traj2]
    data.traj2 = PoseTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PoseTrajectory.getMessageSize(object.traj1);
    length += PoseTrajectory.getMessageSize(object.traj2);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_trajectory_controller/MergeTwoPoseTrajRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01587d1ad75d9027d35e7a56e635466e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pose_trajectory_controller/PoseTrajectory traj1
    pose_trajectory_controller/PoseTrajectory traj2
    
    ================================================================================
    MSG: pose_trajectory_controller/PoseTrajectory
    Header header
    string[] axis_names
    PoseTrajectoryPoint[] points
    
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
    const resolved = new MergeTwoPoseTrajRequest(null);
    if (msg.traj1 !== undefined) {
      resolved.traj1 = PoseTrajectory.Resolve(msg.traj1)
    }
    else {
      resolved.traj1 = new PoseTrajectory()
    }

    if (msg.traj2 !== undefined) {
      resolved.traj2 = PoseTrajectory.Resolve(msg.traj2)
    }
    else {
      resolved.traj2 = new PoseTrajectory()
    }

    return resolved;
    }
};

class MergeTwoPoseTrajResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mergedTraj = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('mergedTraj')) {
        this.mergedTraj = initObj.mergedTraj
      }
      else {
        this.mergedTraj = new PoseTrajectory();
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MergeTwoPoseTrajResponse
    // Serialize message field [mergedTraj]
    bufferOffset = PoseTrajectory.serialize(obj.mergedTraj, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MergeTwoPoseTrajResponse
    let len;
    let data = new MergeTwoPoseTrajResponse(null);
    // Deserialize message field [mergedTraj]
    data.mergedTraj = PoseTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PoseTrajectory.getMessageSize(object.mergedTraj);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_trajectory_controller/MergeTwoPoseTrajResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '569e8a0f79180fea8a9c5040864874e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pose_trajectory_controller/PoseTrajectory mergedTraj
    
    int32 error_code
    int32 SUCCESSFUL = 0
    int32 EMPTY_TRAJECTORIES = -1
    int32 INVALID_TRAJECTORIES = -2
    
    
    ================================================================================
    MSG: pose_trajectory_controller/PoseTrajectory
    Header header
    string[] axis_names
    PoseTrajectoryPoint[] points
    
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
    const resolved = new MergeTwoPoseTrajResponse(null);
    if (msg.mergedTraj !== undefined) {
      resolved.mergedTraj = PoseTrajectory.Resolve(msg.mergedTraj)
    }
    else {
      resolved.mergedTraj = new PoseTrajectory()
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    return resolved;
    }
};

// Constants for message
MergeTwoPoseTrajResponse.Constants = {
  SUCCESSFUL: 0,
  EMPTY_TRAJECTORIES: -1,
  INVALID_TRAJECTORIES: -2,
}

module.exports = {
  Request: MergeTwoPoseTrajRequest,
  Response: MergeTwoPoseTrajResponse,
  md5sum() { return 'e11fe386d4fd2c90cf60fe0b831365f7'; },
  datatype() { return 'pose_trajectory_controller/MergeTwoPoseTraj'; }
};
