; COMMAND-LINE: --dump-proofs --proof-format-mode=alethe --dag-thresh=0 --simplification=none --proof-granularity=theory-rewrite
; EXIT: 0
; SCRUBBER: grep -v -E '.*'
(set-logic AUFLIA)
(declare-const x Bool)
(declare-sort S 0)
(declare-sort N 0)
(declare-sort E 0)
(declare-sort H 0)
(declare-sort S_ 0)
(declare-sort V 0)
(declare-sort hs 0)
(declare-fun f () S)
(declare-fun d () N)
(declare-fun m (N N) N)
(declare-fun r () N)
(declare-fun m (H H) H)
(declare-fun o (N) H)
(declare-fun t (N N) N)
(declare-fun t (H H) H)
(declare-fun w () hs)
(declare-fun p () N)
(declare-fun u (S_ S) E)
(declare-fun l (H H) Bool)
(declare-fun of (N) E)
(declare-fun u (hs S) H)
(declare-fun t (E) N)
(declare-fun a () S_)
(declare-fun h (E) H)
(assert (forall ((? N)) (= (o d) (h (of r)))))
(assert (forall ((? E) (v E)) (= (h ?) (h v))))
(assert (forall ((? V)) (or (l (u w f) (o (m p (t (of r))))))))
(assert (forall ((v H)) (= x (= (o r) (t v v)))))
(assert (forall ((v N)) (= (o (m p v)) (m (o p) (o v)))))
(assert (forall ((v N)) (= (o (t r v)) (t (o v) (o v)))))
(assert (forall ((v N)) (= (of r) (of (t r v)))))
(assert (forall ((? N)) (= ? (t (of ?)))))
(assert (not (l (u w f) (m (o p) (t (o d) (h (u a f)))))))
(check-sat)
