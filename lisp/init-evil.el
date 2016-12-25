(require-package 'evil)

(require 'evil)
(evil-mode 1)

(require-package 'evil-visualstar)

(global-evil-visualstar-mode)

(require-package 'evil-nerd-commenter)
(evilnc-default-hotkeys)

(provide 'init-evil)
