;; init-packages.el

(require 'compile)

(defun require-package (package &optional min-version)
  "Ask elpa to install given PACKAGE."
  (unless (package-installed-p package min-version)
    (package-install package)))

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))


;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
    (url-retrieve-synchronously
      "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
; (el-get 'sync)


(setq el-get-sources
      '((:name distel
               :type git
               :url "git@github.com:massemanet/distel.git")
        (:name elscreen
               :type git
               :url "git://github.com/knu/elscreen.git")
        (:name dirtree
               :type git
               :url "git://github.com/zkim/emacs-dirtree.git")
        (:name solarized-colorscheme
               :type git
               :url "git@github.com:sellout/emacs-color-theme-solarized.git")
        ))

;; elpa packages
;(require-package evil)

;; el-get packages
(setq my-packages
      (append '( evil
                 evil-surround
                 powerline
                 distel
                 ; elscreen 
                 tree-mode
                 windata
                 dirtree 
                 solarized-colorscheme
                 )))

(el-get 'sync my-packages)

(provide 'init-packages)
