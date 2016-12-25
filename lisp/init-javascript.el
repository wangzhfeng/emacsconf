(require-package 'js2-mode)

(require-package 'json-reformat)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)

(provide 'init-javascript)
