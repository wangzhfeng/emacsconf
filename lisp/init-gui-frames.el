;; Scrolling Smooth
;; (setq scroll-step 1)

;; Disable startup screen
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

;; Disable toolbar
(tool-bar-mode -1)

(setq frame-title-format
    '((:eval (if (buffer-file-name)
                (abbreviate-file-name (buffer-file-name))
                "%b"))))

;; Set tab width
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(global-hl-line-mode t)
(global-visual-line-mode t)
(column-number-mode t)
;; (global-linum-mode t)
;; (setq linum-format "  %d")

(setq-default cursor-type 'bar)

;; Make emacs full screen
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; (setq initial-frame-alist (quote ((maximized))))

(provide 'init-gui-frames)
