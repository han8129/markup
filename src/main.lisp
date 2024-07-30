(defpackage markup
  (:use :cl))
(in-package :markup)

(ql:quickload '("hunchentoot" "caveman2" "spinneret" "djula" "com.inuoe.jzon"))


(defvar *acceptor* (make-instance 'hunchentoot:easy-acceptor
                                  :port 8080
                                  :document-root #p"./www/"))
(defun hello ()
  (format nil "Hello, this route fast!"))

(push (hunchentoot:create-prefix-dispatcher "/hello" #'hello)
      hunchentoot:*dispatch-table*)

(hunchentoot:define-easy-handler (say-yo :uri "/hi") (name)
  (setf (hunchentoot:content-type*) "text/json")
  (let ((result (list "hi" name)))
    (com.inuoe.jzon:stringify result)))
 
(defun main()
  (hunchentoot:start *acceptor* ))

(defun stop() (hunchentoot:stop *acceptor*) )
