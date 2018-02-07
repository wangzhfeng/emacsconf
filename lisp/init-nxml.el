;; See: http://sinewalker.wordpress.com/2008/06/26/pretty-printing-xml-with-emacs-nxml-mode/
(defun sanityinc/pp-xml-region (beg end)
  "Pretty format XML markup in region. The function inserts
linebreaks to separate tags that have nothing but whitespace
between them.  It then indents the markup by using nxml's
indentation rules."
  (interactive "r")
  (unless (use-region-p)
    (setq beg (point-min)
          end (point-max)))
  ;; Use markers because our changes will move END
  (setq beg (set-marker (make-marker) begin)
        end (set-marker (make-marker) end))
  (save-excursion
    (goto-char beg)
    (while (search-forward-regexp "\>[ \\t]*\<" end t)
      (backward-char) (insert "\n"))
    (nxml-mode)
    (indent-region begin end)))

(setq nxml-child-indent 4 nxml-attribute-indent 4)

(provide 'init-nxml)
