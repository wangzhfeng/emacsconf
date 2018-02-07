;; 关闭其他buffer
(defun kill-other-buffers()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer
        (delq (current-buffer)
              (remove-if-not 'buffer-file-name (buffer-list)))))

(require-package 'request)

(provide 'init-local)

