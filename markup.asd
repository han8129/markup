(defsystem "markup"
  :version "0.0.1"
  :author ""
  :license ""
  :depends-on (#:hunchentoot
               #:caveman2
               #:spinneret
               #:djula
               #:com.inuoe.jzon)
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "markup/tests")))
  :entry-point "markup::main")

(defsystem "markup/tests"
  :author ""
  :license ""
  :depends-on ("markup"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for markup"
  :perform (test-op (op c) (symbol-call :rove :run c)))
