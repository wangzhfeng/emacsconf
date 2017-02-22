(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(require 'init-utils)
(require 'init-site-lisp)
(require 'init-elpa)
;; (require 'init-exec-path)

(require 'init-editing)
(require 'init-powerline)
(require 'init-windows)
(require 'init-themes)
(require 'init-fonts)
(require 'init-evil)

(require 'init-markdown)
(require 'init-git)
(require 'init-javascript)
(require 'init-html)
(require 'init-css)
(require 'init-sql)
(require 'init-org)
;; (require 'init-php)
(require 'init-yaml)
(require 'init-coffee)
;; (require 'init-novel)
(require 'init-vbs)
(require 'init-nxml)
(require 'init-rest)

;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(require 'server)
(unless (server-running-p)
  (server-start))

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))
(require 'init-local nil t)

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)


