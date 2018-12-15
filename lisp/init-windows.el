(require-package 'switch-window)
(setq-default switch-window-shortcut-style 'alphabet)
(setq-default switch-window-timeout nil)

(setq switch-window-auto-resize-window t)
(setq switch-window-default-window-size 0.8) ;80% of frame size

(global-set-key (kbd "C-x o") 'switch-window)

(provide 'init-windows)
