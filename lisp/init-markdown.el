(require-package 'markdown-mode)
(require-package 'markdown-preview-mode)

(setq auto-mode-alist
      (cons '("\\.\\(md\\|markdown\\|note\\)\\'" . markdown-mode) auto-mode-alist))

(setq markdown-command "pandoc -c http://138.197.120.187:81/css/github-markdown2.css -f markdown -t html5 --template e:\\tools\\Pandoc\\default.html5 -s --mathjax --highlight-style tango")
;;(setq markdown-command "pandoc -f markdown -t html5 --template e:\\tools\\Pandoc\\default.html5 -s --mathjax --highlight-style zenburn --toc")

(provide 'init-markdown)
