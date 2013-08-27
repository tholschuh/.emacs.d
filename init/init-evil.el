;; Evil 

; (require 'evil)

; evil-surround
(require 'surround)

(evil-mode 1)
(define-key evil-normal-state-map " " "S-;")

(provide 'init-evil)
