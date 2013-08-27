; enable show paren mode (highlights matching parentheses)
(show-paren-mode 1)
(custom-set-faces
  '(show-paren-match ((t (:background "green"))))
  '(show-paren-mismatch ((((class color)) (:background "red" :foreground "white")))))

; set faces with terminal colors
(set-face-background 'region                                  "brightblue")
(set-face-foreground 'font-lock-builtin-face                  "blue")
(set-face-foreground 'font-lock-comment-delimiter-face        "brightgreen")
(set-face-foreground 'font-lock-comment-face                  "brightgreen")
(set-face-foreground 'font-lock-constant-face                 "cyan")
(set-face-foreground 'font-lock-doc-face                      "brightgreen")
(set-face-foreground 'font-lock-function-name-face            "brightcyan")
(set-face-foreground 'font-lock-keyword-face                  "yellow")
(set-face-foreground 'font-lock-negation-char-face            "brightwhite")
(set-face-foreground 'font-lock-preprocessor-face             "green")
(set-face-foreground 'font-lock-regexp-grouping-backslash     "brightwhite")
(set-face-foreground 'font-lock-regexp-grouping-construct     "brightwhite")
(set-face-foreground 'font-lock-string-face                   "magenta")
(set-face-foreground 'font-lock-type-face                     "brightcyan")
(set-face-foreground 'font-lock-variable-name-face            "cyan")
(set-face-foreground 'font-lock-warning-face                  "brightred")


; (add-to-list 'custom-theme-load-path "~/.emacs.d/el-get/solarized-colorscheme")
; (load-theme 'solarized-dark t)

(provide 'init-color-theme)
