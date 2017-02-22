;;; 支持visual basic
(require-package 'vbasense)

(require 'vbasense)
(vbasense-config-default)

(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
(setq auto-mode-alist (append '(("\\.\\(frm\\|vbs\\|bas\\|cls\\)$" .
                                  visual-basic-mode)) auto-mode-alist))

(provide 'init-vbs)
