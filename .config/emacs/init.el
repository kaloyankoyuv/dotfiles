(use-package use-package
  :custom
  (use-package-always-ensure t)
  (use-package-always-demand t))

(use-package package
  :init
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))

(use-package emacs
  :init
  (add-to-list 'default-frame-alist '(font . "SauceCodePro Nerd Font-10"))
  (add-to-list 'default-frame-alist '(alpha-background . 80))
  :config
  (menu-bar-mode 0)
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (blink-cursor-mode 0)
  (column-number-mode)
  :custom
  (make-backup-files nil)
  (initial-scratch-message nil)
  (inhibit-startup-screen t)
  (undo-no-redo t)
  (scroll-conservatively 1000)
  (scroll-margin 5)
  (ring-bell-function 'ignore)
  (custom-file "~/.config/emacs/custom.el"))

(use-package display-line-numbers
  :custom
  (display-line-numbers-type 'visual)
  :hook
  (prog-mode . display-line-numbers-mode))

(use-package hl-line
  :hook
  (prog-mode . hl-line-mode))

(use-package elec-pair
  :config
  (electric-pair-mode))

(use-package eshell
  :bind
  ("C-c e" . eshell))

(use-package ibuffer
  :bind
  ("C-c b" . ibuffer))

(use-package recentf
  :bind
  ("C-c r" . recentf)
  :config
  (recentf-mode))

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

