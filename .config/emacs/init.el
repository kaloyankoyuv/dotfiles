(setq make-backup-files nil
      initial-scratch-message nil
      inhibit-startup-screen t
      undo-no-redo t
      scroll-conservatively 1000
      scroll-margin 5
      display-line-numbers-type 'visual
      ring-bell-function 'ignore
      custom-file "~/.config/emacs/custom.el")

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)
(column-number-mode)
(electric-pair-mode)
(global-hl-line-mode)
(global-display-line-numbers-mode)

(add-to-list 'default-frame-alist
             '(font . "SauceCodePro Nerd Font-10"))

(keymap-global-set "C-c b" 'ibuffer)
(keymap-global-set "C-c e" 'eshell)
(keymap-global-set "C-c f" 'eglot-format)
(keymap-global-set "C-c d" 'eglot-find-declaration)

(add-hook 'c++-mode-hook 'eglot-ensure)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

(use-package yasnippet)
(use-package magit)
(use-package doom-themes
  :config
  (load-theme 'doom-one t))
(use-package doom-modeline
  :config
  (doom-modeline-mode))
(use-package vertico
  :config
  (vertico-mode))
(use-package marginalia
  :config
  (marginalia-mode))
(use-package corfu
  :init
  (setq corfu-auto t)
  :config
  (global-corfu-mode))
(use-package orderless
  :init
  (setq completion-styles '(orderless basic)
	completion-category-overrides '((file (styles basic partial-completion)))))
(use-package which-key
  :config
  (which-key-mode))
(use-package treemacs
  :init
  (keymap-global-set "C-c t" 'treemacs))
