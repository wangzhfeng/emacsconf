(when (< emacs-major-version 24)
  (require-package 'color-theme))

(require-package 'monokai-theme)
(require-package 'zenburn-theme)
(require-package 'solarized-theme)
(require-package 'spacemacs-theme)
(require-package 'molokai-theme)
(require-package 'color-theme-sanityinc-solarized)

;; (load-theme 'molokai t)
;; (load-theme 'spacemacs-light t)
(load-theme 'monokai t)
;; (load-theme 'zenburn t)
;; (load-theme 'solarized t)
;; (load-theme 'sanityinc-solarized-light t)

;;------------------------------------------------------------------------------
;; Toggle between light and dark
;;------------------------------------------------------------------------------
(defun light ()
  "Activate a light color theme."
  (interactive)
  (color-theme-sanityinc-solarized-light))

(defun dark ()
  "Activate a dark color theme."
  (interactive)
  (color-theme-sanityinc-solarized-dark))

(provide 'init-themes)