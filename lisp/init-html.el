(require-package 'web-mode)
(require-package 'emmet-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))

;; emmet mode
(require 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

(require-package 'tagedit)
(after-load 'sgml-mode
  (tagedit-add-paredit-like-keybindings)
  (add-hook 'sgml-mode-hook (lambda () (tagedit-mode 1))))

(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))

(provide 'init-html)
