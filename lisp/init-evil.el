(require-package 'evil)

(require 'evil)
(evil-mode 1)

;; 查找当前选中的文本
(require-package 'evil-visualstar)
(global-evil-visualstar-mode)

;; 快速注释代码
(require-package 'evil-nerd-commenter)
(evilnc-default-hotkeys)

(require-package 'evil-matchit)
(require 'evil-matchit)
(global-evil-matchit-mode t)

;; 智能括号
(require-package 'evil-smartparens)
(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)

(provide 'init-evil)
