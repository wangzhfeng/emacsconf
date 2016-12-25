(require-package 'company)
(require-package 'hungry-delete)
(require-package 'swiper)
(require-package 'counsel)
(require-package 'smartparens)
(require-package 'smex)

(global-company-mode t)

(require 'hungry-delete)
(global-hungry-delete-mode)

(require 'smex)
(smex-initialize)

;; swiper config
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;; 智能括号
(require 'smartparens-config)
(smartparens-global-mode t)

;; 自动增加括号或其他符号
(require-package 'wrap-region)
(wrap-region-mode t)
(wrap-region-add-wrapper "#" "#")
(wrap-region-add-wrapper "$" "$")

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-editing)
