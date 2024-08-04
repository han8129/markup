(defsystem "markup-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("markup"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "markup"))))
  :description "Test system for markup"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
