# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# The pose trajectory to follow
pose_trajectory_controller/PoseTrajectory trajectory

# Tolerances for the trajectory.  If the measured joint values fall
# outside the tolerances the trajectory goal is aborted.  Any
# tolerances that are not specified (by being omitted or set to 0) are
# set to the defaults for the action server (often taken from the
# parameter server).

# Leave the tolerances in terms of joints for now to ease transition,
# we can't get FK of the SP anyway so it doesn't really matter.

# Tolerances applied to the joints as the trajectory is executed.  If
# violated, the goal aborts with error_code set to
# PATH_TOLERANCE_VIOLATED.
pose_trajectory_controller/AxisTolerance[] path_tolerance

# To report success, the joints must be within goal_tolerance of the
# final trajectory value.  The goal must be achieved by time the
# trajectory ends plus goal_time_tolerance.  (goal_time_tolerance
# allows some leeway in time, so that the trajectory goal can still
# succeed even if the joints reach the goal some time after the
# precise end time of the trajectory).
#
# If the joints are not within goal_tolerance after "trajectory finish
# time" + goal_time_tolerance, the goal aborts with error_code set to
# GOAL_TOLERANCE_VIOLATED
pose_trajectory_controller/AxisTolerance[] goal_tolerance
duration goal_time_tolerance

