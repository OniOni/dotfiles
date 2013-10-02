;; colors
(set-foreground-color "white")
(set-background-color "#3d3d3d")

;; paren
(show-paren-mode 1)
(setq show-paren-delai 0)

;; whitespace cleanup
(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook' whitespace-cleanup)

;; js
(custom-set-variables
 '(js-indent-level 2))
