;; Auto-generated. Do not edit!


(when (boundp 'cartesian_control_msgs::FollowCartesianTrajectoryResult)
  (if (not (find-package "CARTESIAN_CONTROL_MSGS"))
    (make-package "CARTESIAN_CONTROL_MSGS"))
  (shadow 'FollowCartesianTrajectoryResult (find-package "CARTESIAN_CONTROL_MSGS")))
(unless (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT")
  (make-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))

(in-package "ROS")
;;//! \htmlinclude FollowCartesianTrajectoryResult.msg.html


(intern "*SUCCESSFUL*" (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(shadow '*SUCCESSFUL* (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(defconstant cartesian_control_msgs::FollowCartesianTrajectoryResult::*SUCCESSFUL* 0)
(intern "*INVALID_GOAL*" (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(shadow '*INVALID_GOAL* (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(defconstant cartesian_control_msgs::FollowCartesianTrajectoryResult::*INVALID_GOAL* -1)
(intern "*INVALID_JOINTS*" (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(shadow '*INVALID_JOINTS* (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(defconstant cartesian_control_msgs::FollowCartesianTrajectoryResult::*INVALID_JOINTS* -2)
(intern "*OLD_HEADER_TIMESTAMP*" (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(shadow '*OLD_HEADER_TIMESTAMP* (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(defconstant cartesian_control_msgs::FollowCartesianTrajectoryResult::*OLD_HEADER_TIMESTAMP* -3)
(intern "*PATH_TOLERANCE_VIOLATED*" (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(shadow '*PATH_TOLERANCE_VIOLATED* (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(defconstant cartesian_control_msgs::FollowCartesianTrajectoryResult::*PATH_TOLERANCE_VIOLATED* -4)
(intern "*GOAL_TOLERANCE_VIOLATED*" (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(shadow '*GOAL_TOLERANCE_VIOLATED* (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(defconstant cartesian_control_msgs::FollowCartesianTrajectoryResult::*GOAL_TOLERANCE_VIOLATED* -5)
(intern "*INVALID_POSTURE*" (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(shadow '*INVALID_POSTURE* (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYRESULT"))
(defconstant cartesian_control_msgs::FollowCartesianTrajectoryResult::*INVALID_POSTURE* -6)

(defun cartesian_control_msgs::FollowCartesianTrajectoryResult-to-symbol (const)
  (cond
        ((= const 0) 'cartesian_control_msgs::FollowCartesianTrajectoryResult::*SUCCESSFUL*)
        ((= const -1) 'cartesian_control_msgs::FollowCartesianTrajectoryResult::*INVALID_GOAL*)
        ((= const -2) 'cartesian_control_msgs::FollowCartesianTrajectoryResult::*INVALID_JOINTS*)
        ((= const -3) 'cartesian_control_msgs::FollowCartesianTrajectoryResult::*OLD_HEADER_TIMESTAMP*)
        ((= const -4) 'cartesian_control_msgs::FollowCartesianTrajectoryResult::*PATH_TOLERANCE_VIOLATED*)
        ((= const -5) 'cartesian_control_msgs::FollowCartesianTrajectoryResult::*GOAL_TOLERANCE_VIOLATED*)
        ((= const -6) 'cartesian_control_msgs::FollowCartesianTrajectoryResult::*INVALID_POSTURE*)
        (t nil)))

(defclass cartesian_control_msgs::FollowCartesianTrajectoryResult
  :super ros::object
  :slots (_error_code _error_string ))

(defmethod cartesian_control_msgs::FollowCartesianTrajectoryResult
  (:init
   (&key
    ((:error_code __error_code) 0)
    ((:error_string __error_string) "")
    )
   (send-super :init)
   (setq _error_code (round __error_code))
   (setq _error_string (string __error_string))
   self)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:error_string
   (&optional __error_string)
   (if __error_string (setq _error_string __error_string)) _error_string)
  (:serialization-length
   ()
   (+
    ;; int32 _error_code
    4
    ;; string _error_string
    4 (length _error_string)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _error_code
       (write-long _error_code s)
     ;; string _error_string
       (write-long (length _error_string) s) (princ _error_string s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _error_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cartesian_control_msgs::FollowCartesianTrajectoryResult :md5sum-) "56145446855197a5891086450d36e145")
(setf (get cartesian_control_msgs::FollowCartesianTrajectoryResult :datatype-) "cartesian_control_msgs/FollowCartesianTrajectoryResult")
(setf (get cartesian_control_msgs::FollowCartesianTrajectoryResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

int32 error_code
int32 SUCCESSFUL = 0
int32 INVALID_GOAL = -1 # e.g. illegal quaternions in poses
int32 INVALID_JOINTS = -2
int32 OLD_HEADER_TIMESTAMP = -3
int32 PATH_TOLERANCE_VIOLATED = -4
int32 GOAL_TOLERANCE_VIOLATED = -5
int32 INVALID_POSTURE = -6

string error_string


")



(provide :cartesian_control_msgs/FollowCartesianTrajectoryResult "56145446855197a5891086450d36e145")


