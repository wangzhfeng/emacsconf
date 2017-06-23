;; 优先使用utf-8编码文件
(prefer-coding-system 'utf-8)
;; 因为在windows系统上，所以使用gbk作为文件名称的编码
(set-file-name-coding-system 'gbk) 

;; 快速将文件编码设置为UTF-8
(global-set-key (kbd "<f3>") (lambda () (interactive) (set-buffer-file-coding-system 'utf-8)))


;; 设置buffer编码为gbk
(global-set-key (kbd "<f4>") (lambda () (interactive) (revert-buffer-with-coding-system 'gbk)))

(provide 'init-coding)

