(set-logic QF_SLIA)
(set-info :status unsat)
(declare-fun x () String)
(assert (not (= (str.replace "ABCDEF" "C" x) (str.++ "AB" x "DEF"))))
(check-sat)
