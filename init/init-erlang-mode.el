(add-to-list
   'load-path
       (car (file-expand-wildcards "/opt/erlang/lib/erlang/lib/tools-*/emacs")))
(setq erlang-root-dir "/opt/erlang/")
(setq exec-path (cons "/opt/erlang/bin" exec-path))

; (erlang-font-lock-level-4)

; (add-hook 'erlang-mode
;           (lambda ()
;             (font-lock-add-keywords 'erlang-mode
;                                     '(("\\<\\(after\\|and\\|andalso\\|band\\|"+
;                                        "begin\\|bnot\\|bor\\|bsl\\|bsr\\|"+
;                                        "bxor\\|case\\|catch\\|cond\\|div\\|"+
;                                        "end\\|fun\\|if\\|let\\|not\\|of\\|"+
;                                        "or\\|orelse\\|query\\|receive\\|"+
;                                        "rem\\|try\\|when\\|xor\\)\\>" . 
;                                        font-lock-keyword-face)
;                                       ("\\(->\\|<-\\|=\\)" . 
;                                        font-lock-keyword-face)
;                                       ))))

(require 'erlang-start)

(provide 'init-erlang-mode)
