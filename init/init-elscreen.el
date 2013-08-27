;; elscreen
(load "elscreen" "ElScreen" t)
(define-key evil-normal-state-map (kbd "C-w t") 'elscreen-create) ;creat tab
(define-key evil-normal-state-map (kbd "C-w x") 'elscreen-kill) ;kill tab
(define-key evil-normal-state-map (kbd "<S-tab>") 'elscreen-previous) ;previous tab
(define-key evil-normal-state-map (kbd "tab") 'elscreen-next) ;next tab

(provide 'init-elscreen)
