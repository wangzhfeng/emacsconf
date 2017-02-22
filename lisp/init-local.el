(set-frame-font "Monaco-12")
(dolist (charset '(han kana symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                   ;; (font-spec :family "SimSun" :size 18)
                    (font-spec :family "Microsoft Yahei" :size 18)
                    ))

;; 优先使用utf-8编码文件
(prefer-coding-system 'utf-8)

;; 因为在windows系统上，所以使用gbk作为文件名称的编码
(set-file-name-coding-system 'gbk) 

;; Scrolling Smooth
;; (setq scroll-step 1)

;; Disable startup screen
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

;; disable toolbar
(tool-bar-mode -1)

(setq frame-title-format
    '((:eval (if (buffer-file-name)
                (abbreviate-file-name (buffer-file-name))
                "%b"))))

;; Default mode 
(setq default-major-mode 'text-mode)
;; (add-hook 'text-mode-hook 'turn-on-auto-fill)

(define-key global-map "\C-x\C-u" 'undo)

;; Set tab width
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(global-hl-line-mode t)
(global-visual-line-mode t)
(column-number-mode t)
;; (global-linum-mode t)
;; (setq linum-format "  %d")

(setq-default cursor-type 'bar)

(setq make-backup-files nil)

(global-auto-revert-mode)

;; make emacs full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-my-init-file)

(global-set-key (kbd "<f3>") (lambda () (interactive) (set-buffer-file-coding-system 'utf-8)))

(provide 'init-local)

