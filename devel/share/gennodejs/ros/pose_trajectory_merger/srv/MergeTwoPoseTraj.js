// Auto-generated. Do not edit!

// (in-package pose_trajectory_merger.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let pose_trajectory_controller = _finder('pose_trajectory_controller');

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
        this.traj1 = new pose_trajectory_controller.msg.PoseTrajectory();
      }
      if (initObj.hasOwnProperty('traj2')) {
        this.traj2 = initObj.traj2
      }
      else {
        this.traj2 = new pose_trajectory_controller.msg.PoseTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MergeTwoPoseTrajRequest
    // Serialize message field [traj1]
    bufferOffset = pose_trajectory_controller.msg.PoseTrajectory.serialize(obj.traj1, buffer, bufferOffset);
    // Serialize message field [traj2]
    bufferOffset = pose_trajectory_controller.msg.PoseTrajectory.serialize(obj.traj2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MergeTwoPoseTrajRequest
    let len;
    let data = new MergeTwoPoseTrajRequest(null);
    // Deserialize message field [traj1]
    data.traj1 = pose_trajectory_controller.msg.PoseTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [traj2]
    data.traj2 = pose_trajectory_controller.msg.PoseTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += pose_trajectory_controller.msg.PoseTrajectory.getMessageSize(object.traj1);
    length += pose_trajectory_controller.msg.PoseTrajectory.getMessageSize(object.traj2);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_trajectory_merger/MergeTwoPoseTrajRequest';
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
      resolved.traj1 = pose_trajectory_controller.msg.PoseTrajectory.Resolve(msg.traj1)
    }
    else {
      resolved.traj1 = new pose_trajectory_controller.msg.PoseTrajectory()
    }

    if (msg.traj2 !== undefined) {
      resolved.traj2 = pose_trajectory_controller.msg.PoseTrajectory.Resolve(msg.traj2)
    }
    else {
      resolved.traj2 = new pose_trajectory_controller.msg.PoseTrajectory()
    }

    return resolved;
    }
};

class MergeTwoPoseTrajResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mergedTraj = null;
    }
    else {
      if (initObj.hasOwnProperty('mergedTraj')) {
        this.mergedTraj = initObj.mergedTraj
      }
      else {
        this.mergedTraj = new pose_trajectory_controller.msg.PoseTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MergeTwoPoseTrajResponse
    // Serialize message field [mergedTraj]
    bufferOffset = pose_trajectory_controller.msg.PoseTrajectory.serialize(obj.mergedTraj, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MergeTwoPoseTrajResponse
    let len;
    let data = new MergeTwoPoseTrajResponse(null);
    // Deserialize message field [mergedTraj]
    data.mergedTraj = pose_trajectory_controller.msg.PoseTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += pose_trajectory_controller.msg.PoseTrajectory.getMessageSize(object.mergedTraj);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_trajectory_merger/MergeTwoPoseTrajResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ded2a268e0dc3856bb45a4bee896772';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pose_trajectory_controller/PoseTrajectory mergedTraj
    
    
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
      resolved.mergedTraj = pose_trajectory_controller.msg.PoseTrajectory.Resolve(msg.mergedTraj)
    }
    else {
      resolved.mergedTraj = new pose_trajectory_controller.msg.PoseTrajectory()
    }

    return resolved;
    }
};

module.exports = {
  Request: MergeTwoPoseTrajRequest,
  Response: MergeTwoPoseTrajResponse,
  md5sum() { return 'fb374ce408455dda151172e11b9e5993'; },
  datatype() { return 'pose_trajectory_merger/MergeTwoPoseTraj'; }
};
