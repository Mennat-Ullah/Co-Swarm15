
(cl:in-package :asdf)

(defsystem "chapter7_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Neighbor" :depends-on ("_package_Neighbor"))
    (:file "_package_Neighbor" :depends-on ("_package"))
  ))