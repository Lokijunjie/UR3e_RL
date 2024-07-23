;; Auto-generated. Do not edit!


(when (boundp 'cartesian_control_msgs::CartesianPosture)
  (if (not (find-package "CARTESIAN_CONTROL_MSGS"))
    (make-package "CARTESIAN_CONTROL_MSGS"))
  (shadow 'CartesianPosture (find-package "CARTESIAN_CONTROL_MSGS")))
(unless (find-package "CARTESIAN_CONTROL_MSGS::CARTESIANPOSTURE")
  (make-package "CARTESIAN_CONTROL_MSGS::CARTESIANPOSTURE"))

(in-package "ROS")
;;//! \htmlinclude CartesianPosture.msg.html


(defclass cartesian_control_msgs::CartesianPosture
  :super ros::object
  :slots (_posture_joint_names _posture_joint_values ))

(defmethod cartesian_control_msgs::CartesianPosture
  (:init
   (&key
    ((:posture_joint_names __posture_joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:posture_joint_values __posture_joint_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _posture_joint_names __posture_joint_names)
   (setq _posture_joint_values __posture_joint_values)
   self)
  (:posture_joint_names
   (&optional __posture_joint_names)
   (if __posture_joint_names (setq _posture_joint_names __posture_joint_names)) _posture_joint_names)
  (:posture_joint_values
   (&optional __posture_joint_values)
   (if __posture_joint_values (setq _posture_joint_values __posture_joint_values)) _posture_joint_values)
  (:serialization-length
   ()
   (+
    ;; string[] _posture_joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _posture_joint_names)) 4
    ;; float64[] _posture_joint_values
    (* 8    (length _posture_joint_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _posture_joint_names
     (write-long (length _posture_joint_names) s)
     (dolist (elem _posture_joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _posture_joint_values
     (write-long (length _posture_joint_values) s)
     (dotimes (i (length _posture_joint_values))
       (sys::poke (elt _posture_joint_values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _posture_joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _posture_joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _posture_joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _posture_joint_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _posture_joint_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _posture_joint_values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get cartesian_control_msgs::CartesianPosture :md5sum-) "fd61b7ee575c3e6d2dc191be6b741ff0")
(setf (get cartesian_control_msgs::CartesianPosture :datatype-) "cartesian_control_msgs/CartesianPosture")
(setf (get cartesian_control_msgs::CartesianPosture :definition-)
      "# Posture joint names may reflect a subset of all available joints (empty posture definitions are
# also possible). The length of posture_joint_names and posture_joint_values have to be equal.

string[] posture_joint_names
float64[] posture_joint_values

")



(provide :cartesian_control_msgs/CartesianPosture "fd61b7ee575c3e6d2dc191be6b741ff0")


