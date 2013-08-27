
(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(cd "~")

(mapcar 'require
        '(init-packages
          init-evil 
          init-dirtree
          init-elscreen
	  init-erlang-mode
          init-distel
          init-color-theme
          ))

(setq custom-file "~/.emacs.d/my-custom-variables.el")
(load custom-file)
