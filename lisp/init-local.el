(set-fontset-font "fontset-default"
 'gb18030 '("Microsoft YaHei" . "unicode-bmp"))

(set-default-font "Monaco-11")

;; Scrolling Smooth
(setq scroll-step 1)

;; Disable startup screen
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

;; disable toolbar
(tool-bar-mode -1)

(setq frame-title-format
    '((:eval (if (buffer-file-name)
                (abbreviate-file-name (buffer-file-name))
                "%b"))))

(provide 'init-local)
