(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

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
      completions-max-height 15
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

(defun dln-hl-toggle ()
  (interactive)
  (hl-line-mode 'toggle)
  (display-line-numbers-mode 'toggle))

(defun global-dln-hl-toggle ()
  (interactive)
  (global-hl-line-mode 'toggle)
  (global-display-line-numbers-mode 'toggle))

(keymap-global-set "C-c b" 'ibuffer)
(keymap-global-set "C-c e" 'eshell)
(keymap-global-set "C-c l" 'dln-hl-toggle)
(keymap-global-set "C-c L" 'global-dln-hl-toggle)
(keymap-global-set "C-c f" 'eglot-format)

(add-hook 'c++-mode-hook 'eglot-ensure)

