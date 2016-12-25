(require-package 'markdown-mode)
(require-package 'markdown-preview-mode)

(setq auto-mode-alist
      (cons '("\\.\\(md\\|markdown\\|note\\)\\'" . markdown-mode) auto-mode-alist))

;;(setq markdown-css-paths "http://jasonm23.github.io/markdown-css-themes/foghorn.css")
(setq markdown-command "pandoc -c http://leanote.com/css/bootstrap.css -c http://macplay.leanote.com/css/font-awesome-4.2.0/css/font-awesome.css   -f markdown -t html5 -s --mathjax --highlight-style tango --toc")

;; (setq markdown-command "pandoc -f markdown -t html5 -s --mathjax  --toc")

(provide 'init-markdown)
