(require-package 'web-mode)
(require-package 'emmet-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))

;; emmet mode
(require 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

(require-package 'tagedit)
(after-load 'sgml-mode
  (tagedit-add-paredit-like-keybindings)
  (add-hook 'sgml-mode-hook (lambda () (tagedit-mode 1))))


;; 跳转到开始和结束元素
(add-hook 'web-mode
          (lambda ()
            (define-key web-mode-map (kbd "<M-left>") 'sgml-skip-tag-backward)
            (define-key web-mode-map (kbd "<M-right") 'sgml-skip-tag-forward)))

;; jade template engine
(require-package 'sws-mode)
(require-package 'jade-mode)
(require 'sws-mode)
(require 'jade-mode)

(provide 'init-html)
