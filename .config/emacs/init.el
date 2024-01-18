(use-package ef-themes :ensure t)
(use-package yasnippet :ensure t)
(use-package magit :ensure t)

(setq make-backup-files nil
      initial-scratch-message nil
      completions-header-format nil
      completion-show-help nil
      inhibit-startup-screen t
      undo-no-redo t
      completion-auto-select t
      scroll-conservatively 1000
      scroll-margin 5
      completions-max-height 20
      display-line-numbers-type 'visual
      completions-format 'one-column
      ring-bell-function 'ignore
      custom-file "~/.config/emacs/custom.el")

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(column-number-mode)
(electric-pair-mode)
(global-hl-line-mode)
(global-display-line-numbers-mode)

(ef-themes-load-random 'dark)

(add-to-list 'default-frame-alist
             '(font . "Source Code Pro-10"))

(keymap-global-set "C-c b" 'ibuffer)
(keymap-global-set "C-c e" 'eshell)
(keymap-global-set "C-c f" 'eglot-format)
(keymap-global-set "C-c d" 'eglot-find-declaration)

(add-hook 'c++-mode-hook 'eglot-ensure)

