;; for chibi-scheme 0.3
(import (chibi match))
(import (chibi macroexpand))

(write
 (macroexpand
  '(match 'good ('bad 'fail) ('good 'ok))))
(newline)
