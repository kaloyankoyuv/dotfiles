(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

(use-package emacs
  :init
  (add-to-list 'default-frame-alist
               '(font . "SauceCodePro Nerd Font-10"))
  :custom
  (make-backup-files nil)
  (initial-scratch-message nil)
  (inhibit-startup-screen t)
  (undo-no-redo t)
  (scroll-conservatively 1000)
  (scroll-margin 5)
  (display-line-numbers-type 'visual)
  (ring-bell-function 'ignore)
  (custom-file "~/.config/emacs/custom.el")
  :config
  (menu-bar-mode 0)
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (blink-cursor-mode 0)
  (column-number-mode)
  (electric-pair-mode)
  (recentf-mode)
  :hook
  (prog-mode . (lambda ()
		 (hl-line-mode)
		 (display-line-numbers-mode))))

(use-package eshell
  :bind
  ("C-c e" . eshell))

(use-package ibuffer
  :bind
  ("C-c b" . ibuffer))

(use-package magit)

(use-package eglot
  :bind
  ("C-c f" . eglot-format)
  ("C-c d" . eglot-find-declaration)
  :hook
  (c++-mode . eglot-ensure))

(use-package yasnippet)

(use-package modus-themes
  :config
  (modus-themes-select 'modus-vivendi))

(use-package vertico
  :config
  (vertico-mode))

(use-package marginalia
  :config
  (marginalia-mode))

(use-package corfu
  :custom
  (corfu-auto t)
  :config
  (global-corfu-mode))

(use-package cape
  :init
  (add-to-list 'completion-at-point-functions 'cape-dabbrev)
  (add-to-list 'completion-at-point-functions 'cape-file))

(use-package consult
  :custom
  (xref-show-xrefs-function 'consult-xref)
  (xref-show-definition-function 'consult-xref)
  :bind
  ("C-x b" . consult-buffer)
  ("C-y" . consult-yank-from-kill-ring)
  ("M-y" . consult-yank-pop)
  ("M-g g" . consult-goto-line)
  ("M-g M-g" . consult-goto-line)
  ("C-c c f" . consult-find)
  ("C-c c g" . consult-grep)
  ("C-c c l" . consult-line)
  ("C-c c L" . consult-line-multi))

(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package which-key
  :config
  (which-key-mode))

(use-package treemacs
  :bind
  ("C-c t" . treemacs))

