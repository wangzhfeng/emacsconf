(require-package 'js2-mode)

(require-package 'json-reformat)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)

(require-package 'js-doc)
(require 'js-doc)

(setq js2-strict-missing-semi-warning nil)
(add-hook 'js2-mode-hook
           #'(lambda ()
               (define-key js2-mode-map "\C-ci" 'js-doc-insert-function-doc)
               (define-key js2-mode-map "@" 'js-doc-insert-tag)))

(require-package 'json-mode)

(provide 'init-javascript)
