(defpackage markup/tests/main
  (:use :cl
        :markup
        :rove))
(in-package :markup/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :markup)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
