;;; omtose-phellack-theme.el 
;;; Dark theme, with cold bluish touch. Available in 2 variants.

;;; Add theme files under 'variants' subdir to load path.

;;; Code:
(let ((dir (file-name-directory load-file-name)))
  (add-to-list 'custom-theme-load-path (concat dir "/variants")))

(provide 'omtose-phellack-theme)

;;; omtose-phellack-theme.el ends here.
