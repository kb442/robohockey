
(cl:in-package :asdf)

(defsystem "referee-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "SendDimensions" :depends-on ("_package_SendDimensions"))
    (:file "_package_SendDimensions" :depends-on ("_package"))
    (:file "TeamReady" :depends-on ("_package_TeamReady"))
    (:file "_package_TeamReady" :depends-on ("_package"))
    (:file "SendColor" :depends-on ("_package_SendColor"))
    (:file "_package_SendColor" :depends-on ("_package"))
  ))