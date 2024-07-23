;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::SetIO)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'SetIO (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::SETIO")
  (make-package "UR_MSGS::SETIO"))
(unless (find-package "UR_MSGS::SETIOREQUEST")
  (make-package "UR_MSGS::SETIOREQUEST"))
(unless (find-package "UR_MSGS::SETIORESPONSE")
  (make-package "UR_MSGS::SETIORESPONSE"))

(in-package "ROS")





(intern "*PIN_AOUT0*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_AOUT0* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_AOUT0* 0)
(intern "*PIN_AOUT1*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_AOUT1* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_AOUT1* 1)
(intern "*PIN_DOUT0*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_DOUT0* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_DOUT0* 0)
(intern "*PIN_DOUT1*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_DOUT1* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_DOUT1* 1)
(intern "*PIN_DOUT2*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_DOUT2* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_DOUT2* 2)
(intern "*PIN_DOUT3*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_DOUT3* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_DOUT3* 3)
(intern "*PIN_DOUT4*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_DOUT4* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_DOUT4* 4)
(intern "*PIN_DOUT5*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_DOUT5* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_DOUT5* 5)
(intern "*PIN_DOUT6*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_DOUT6* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_DOUT6* 6)
(intern "*PIN_DOUT7*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_DOUT7* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_DOUT7* 7)
(intern "*PIN_CONF_OUT0*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_CONF_OUT0* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_CONF_OUT0* 8)
(intern "*PIN_CONF_OUT1*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_CONF_OUT1* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_CONF_OUT1* 9)
(intern "*PIN_CONF_OUT2*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_CONF_OUT2* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_CONF_OUT2* 10)
(intern "*PIN_CONF_OUT3*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_CONF_OUT3* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_CONF_OUT3* 11)
(intern "*PIN_CONF_OUT4*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_CONF_OUT4* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_CONF_OUT4* 12)
(intern "*PIN_CONF_OUT5*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_CONF_OUT5* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_CONF_OUT5* 13)
(intern "*PIN_CONF_OUT6*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_CONF_OUT6* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_CONF_OUT6* 14)
(intern "*PIN_CONF_OUT7*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_CONF_OUT7* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_CONF_OUT7* 15)
(intern "*PIN_TOOL_DOUT0*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_TOOL_DOUT0* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_TOOL_DOUT0* 16)
(intern "*PIN_TOOL_DOUT1*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*PIN_TOOL_DOUT1* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*PIN_TOOL_DOUT1* 17)
(intern "*FUN_SET_DIGITAL_OUT*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_DIGITAL_OUT* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*FUN_SET_DIGITAL_OUT* 1)
(intern "*FUN_SET_FLAG*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_FLAG* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*FUN_SET_FLAG* 2)
(intern "*FUN_SET_ANALOG_OUT*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_ANALOG_OUT* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*FUN_SET_ANALOG_OUT* 3)
(intern "*FUN_SET_TOOL_VOLTAGE*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_TOOL_VOLTAGE* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*FUN_SET_TOOL_VOLTAGE* 4)
(intern "*STATE_OFF*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*STATE_OFF* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*STATE_OFF* 0)
(intern "*STATE_ON*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*STATE_ON* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*STATE_ON* 1)
(intern "*STATE_TOOL_VOLTAGE_0V*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*STATE_TOOL_VOLTAGE_0V* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*STATE_TOOL_VOLTAGE_0V* 0)
(intern "*STATE_TOOL_VOLTAGE_12V*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*STATE_TOOL_VOLTAGE_12V* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*STATE_TOOL_VOLTAGE_12V* 12)
(intern "*STATE_TOOL_VOLTAGE_24V*" (find-package "UR_MSGS::SETIOREQUEST"))
(shadow '*STATE_TOOL_VOLTAGE_24V* (find-package "UR_MSGS::SETIOREQUEST"))
(defconstant ur_msgs::SetIORequest::*STATE_TOOL_VOLTAGE_24V* 24)

(defun ur_msgs::SetIORequest-to-symbol (const)
  (cond
        ((= const 0) 'ur_msgs::SetIORequest::*PIN_AOUT0*)
        ((= const 1) 'ur_msgs::SetIORequest::*PIN_AOUT1*)
        ((= const 0) 'ur_msgs::SetIORequest::*PIN_DOUT0*)
        ((= const 1) 'ur_msgs::SetIORequest::*PIN_DOUT1*)
        ((= const 2) 'ur_msgs::SetIORequest::*PIN_DOUT2*)
        ((= const 3) 'ur_msgs::SetIORequest::*PIN_DOUT3*)
        ((= const 4) 'ur_msgs::SetIORequest::*PIN_DOUT4*)
        ((= const 5) 'ur_msgs::SetIORequest::*PIN_DOUT5*)
        ((= const 6) 'ur_msgs::SetIORequest::*PIN_DOUT6*)
        ((= const 7) 'ur_msgs::SetIORequest::*PIN_DOUT7*)
        ((= const 8) 'ur_msgs::SetIORequest::*PIN_CONF_OUT0*)
        ((= const 9) 'ur_msgs::SetIORequest::*PIN_CONF_OUT1*)
        ((= const 10) 'ur_msgs::SetIORequest::*PIN_CONF_OUT2*)
        ((= const 11) 'ur_msgs::SetIORequest::*PIN_CONF_OUT3*)
        ((= const 12) 'ur_msgs::SetIORequest::*PIN_CONF_OUT4*)
        ((= const 13) 'ur_msgs::SetIORequest::*PIN_CONF_OUT5*)
        ((= const 14) 'ur_msgs::SetIORequest::*PIN_CONF_OUT6*)
        ((= const 15) 'ur_msgs::SetIORequest::*PIN_CONF_OUT7*)
        ((= const 16) 'ur_msgs::SetIORequest::*PIN_TOOL_DOUT0*)
        ((= const 17) 'ur_msgs::SetIORequest::*PIN_TOOL_DOUT1*)
        ((= const 1) 'ur_msgs::SetIORequest::*FUN_SET_DIGITAL_OUT*)
        ((= const 2) 'ur_msgs::SetIORequest::*FUN_SET_FLAG*)
        ((= const 3) 'ur_msgs::SetIORequest::*FUN_SET_ANALOG_OUT*)
        ((= const 4) 'ur_msgs::SetIORequest::*FUN_SET_TOOL_VOLTAGE*)
        ((= const 0) 'ur_msgs::SetIORequest::*STATE_OFF*)
        ((= const 1) 'ur_msgs::SetIORequest::*STATE_ON*)
        ((= const 0) 'ur_msgs::SetIORequest::*STATE_TOOL_VOLTAGE_0V*)
        ((= const 12) 'ur_msgs::SetIORequest::*STATE_TOOL_VOLTAGE_12V*)
        ((= const 24) 'ur_msgs::SetIORequest::*STATE_TOOL_VOLTAGE_24V*)
        (t nil)))

(defclass ur_msgs::SetIORequest
  :super ros::object
  :slots (_fun _pin _state ))

(defmethod ur_msgs::SetIORequest
  (:init
   (&key
    ((:fun __fun) 0)
    ((:pin __pin) 0)
    ((:state __state) 0.0)
    )
   (send-super :init)
   (setq _fun (round __fun))
   (setq _pin (round __pin))
   (setq _state (float __state))
   self)
  (:fun
   (&optional __fun)
   (if __fun (setq _fun __fun)) _fun)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int8 _fun
    1
    ;; int8 _pin
    1
    ;; float32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _fun
       (write-byte _fun s)
     ;; int8 _pin
       (write-byte _pin s)
     ;; float32 _state
       (sys::poke _state (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _fun
     (setq _fun (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _fun 127) (setq _fun (- _fun 256)))
   ;; int8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pin 127) (setq _pin (- _pin 256)))
   ;; float32 _state
     (setq _state (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ur_msgs::SetIOResponse
  :super ros::object
  :slots (_success ))

(defmethod ur_msgs::SetIOResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_msgs::SetIO
  :super ros::object
  :slots ())

(setf (get ur_msgs::SetIO :md5sum-) "f539fc0b1a42859fb186a5aaba22d4b0")
(setf (get ur_msgs::SetIO :datatype-) "ur_msgs/SetIO")
(setf (get ur_msgs::SetIO :request) ur_msgs::SetIORequest)
(setf (get ur_msgs::SetIO :response) ur_msgs::SetIOResponse)

(defmethod ur_msgs::SetIORequest
  (:response () (instance ur_msgs::SetIOResponse :init)))

(setf (get ur_msgs::SetIORequest :md5sum-) "f539fc0b1a42859fb186a5aaba22d4b0")
(setf (get ur_msgs::SetIORequest :datatype-) "ur_msgs/SetIORequest")
(setf (get ur_msgs::SetIORequest :definition-)
      "# Service allows setting digital (DIO) and analog (AIO) IO, as well as flags
# and configuring tool voltage.
#
# This service has three request fields (see below).
#
# When setting DIO or AIO pins to new values:
#
#  fun    The function to perform
#  pin    Numeric ID of the pin to set, see constants definition below
#  state  Desired pin state (signal level for analog or STATE_(ON|OFF) for DIO and flags)
#
# When configuring tool voltage:
#
#  fun    Set to FUN_SET_TOOL_VOLTAGE
#  pin    Ignored
#  state  Desired tool voltage (use STATE_TOOL_VOLTAGE constants)

# constants
# pin mapping
# analog out
int8 PIN_AOUT0 = 0
int8 PIN_AOUT1 = 1

# digital out
int8 PIN_DOUT0 = 0
int8 PIN_DOUT1 = 1
int8 PIN_DOUT2 = 2
int8 PIN_DOUT3 = 3
int8 PIN_DOUT4 = 4
int8 PIN_DOUT5 = 5
int8 PIN_DOUT6 = 6
int8 PIN_DOUT7 = 7

# configurable out
int8 PIN_CONF_OUT0 = 8
int8 PIN_CONF_OUT1 = 9
int8 PIN_CONF_OUT2 = 10
int8 PIN_CONF_OUT3 = 11
int8 PIN_CONF_OUT4 = 12
int8 PIN_CONF_OUT5 = 13
int8 PIN_CONF_OUT6 = 14
int8 PIN_CONF_OUT7 = 15

# digital tool output
int8 PIN_TOOL_DOUT0 = 16
int8 PIN_TOOL_DOUT1 = 17

# valid function values
#
# Note: 'fun' is short for 'function' (ie: the function the service should perform).
int8 FUN_SET_DIGITAL_OUT = 1
int8 FUN_SET_FLAG = 2
int8 FUN_SET_ANALOG_OUT = 3
int8 FUN_SET_TOOL_VOLTAGE = 4

# valid values for 'state' when setting digital IO or flags
int8 STATE_OFF = 0
int8 STATE_ON = 1

# valid 'state' values when setting tool voltage
int8 STATE_TOOL_VOLTAGE_0V = 0
int8 STATE_TOOL_VOLTAGE_12V = 12
int8 STATE_TOOL_VOLTAGE_24V = 24

# request fields
int8 fun
int8 pin
float32 state
---
bool success

")

(setf (get ur_msgs::SetIOResponse :md5sum-) "f539fc0b1a42859fb186a5aaba22d4b0")
(setf (get ur_msgs::SetIOResponse :datatype-) "ur_msgs/SetIOResponse")
(setf (get ur_msgs::SetIOResponse :definition-)
      "# Service allows setting digital (DIO) and analog (AIO) IO, as well as flags
# and configuring tool voltage.
#
# This service has three request fields (see below).
#
# When setting DIO or AIO pins to new values:
#
#  fun    The function to perform
#  pin    Numeric ID of the pin to set, see constants definition below
#  state  Desired pin state (signal level for analog or STATE_(ON|OFF) for DIO and flags)
#
# When configuring tool voltage:
#
#  fun    Set to FUN_SET_TOOL_VOLTAGE
#  pin    Ignored
#  state  Desired tool voltage (use STATE_TOOL_VOLTAGE constants)

# constants
# pin mapping
# analog out
int8 PIN_AOUT0 = 0
int8 PIN_AOUT1 = 1

# digital out
int8 PIN_DOUT0 = 0
int8 PIN_DOUT1 = 1
int8 PIN_DOUT2 = 2
int8 PIN_DOUT3 = 3
int8 PIN_DOUT4 = 4
int8 PIN_DOUT5 = 5
int8 PIN_DOUT6 = 6
int8 PIN_DOUT7 = 7

# configurable out
int8 PIN_CONF_OUT0 = 8
int8 PIN_CONF_OUT1 = 9
int8 PIN_CONF_OUT2 = 10
int8 PIN_CONF_OUT3 = 11
int8 PIN_CONF_OUT4 = 12
int8 PIN_CONF_OUT5 = 13
int8 PIN_CONF_OUT6 = 14
int8 PIN_CONF_OUT7 = 15

# digital tool output
int8 PIN_TOOL_DOUT0 = 16
int8 PIN_TOOL_DOUT1 = 17

# valid function values
#
# Note: 'fun' is short for 'function' (ie: the function the service should perform).
int8 FUN_SET_DIGITAL_OUT = 1
int8 FUN_SET_FLAG = 2
int8 FUN_SET_ANALOG_OUT = 3
int8 FUN_SET_TOOL_VOLTAGE = 4

# valid values for 'state' when setting digital IO or flags
int8 STATE_OFF = 0
int8 STATE_ON = 1

# valid 'state' values when setting tool voltage
int8 STATE_TOOL_VOLTAGE_0V = 0
int8 STATE_TOOL_VOLTAGE_12V = 12
int8 STATE_TOOL_VOLTAGE_24V = 24

# request fields
int8 fun
int8 pin
float32 state
---
bool success

")



(provide :ur_msgs/SetIO "f539fc0b1a42859fb186a5aaba22d4b0")


