;; packages
(package-initialize)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-refresh-contents)

(custom-set-variables
 '(js-indent-level 2)
 '(package-selected-packages
   (quote
    (rust-mode
     magit
     json-mode
     flycheck
     auto-complete
     elixir-mode
     )
    )
   )
 )

(package-install-selected-packages)

;; Line and columns
(column-number-mode t)
(linum-mode t)

;; colors
(set-foreground-color "white")
(set-background-color "#3d3d3d")

;; paren
(show-paren-mode 1)
(setq-default show-paren-delai 0)

;; whitespace cleanup
(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook' whitespace-cleanup)

;; no need for menus
(menu-bar-mode 0)
(tool-bar-mode 0)

;; IDO
(require 'ido)
(ido-mode t)

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Auto-complete
(require 'auto-complete)
(ac-config-default)

(provide '.emacs)
;;; .emacs ends here
