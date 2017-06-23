;;; 设置字体
;;(set-frame-font "Monaco-12")
(set-frame-font "Consolas-13")
(dolist (charset '(han kana symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                   ;; (font-spec :family "SimSun" :size 18)
                    (font-spec :family "Microsoft Yahei" :size 16)
                    ))

(require-package 'default-text-scale)
(global-set-key (kbd "C-M-=") 'default-text-scale-increase)
(global-set-key (kbd "C-M--") 'default-text-scale-decrease)

(provide 'init-fonts)
