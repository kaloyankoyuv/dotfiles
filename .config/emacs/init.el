(setq
 make-backup-files nil
 initial-scratch-message nil
 inhibit-startup-screen t
 scroll-conservatively 1000
 scroll-margin 5
 ring-bell-function 'ignore
 custom-file "~/.config/emacs/custom.el"
 )

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)
(column-number-mode)
(electric-pair-mode)
(display-time-mode)
(display-battery-mode)
(pixel-scroll-precision-mode)

(add-to-list 'default-frame-alist
             '(font . "Hack Nerd Font-10"))

(keymap-global-set "C-c f" 'find-name-dired)
(keymap-global-set "C-c g" 'rgrep)
(keymap-global-set "C-c b" 'ibuffer)
(keymap-global-set "C-c e" 'eshell)

(add-hook 'find-file-hook
	  (lambda ()
	    (display-line-numbers-mode)
	    (hl-line-mode)
	    (display-fill-column-indicator-mode)))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

;; (use-package evil
;;   :init
;;   (setq evil-want-C-u-scroll t
;; 	evil-undo-system 'undo-redo)
;;   (add-hook 'find-file-hook 'evil-local-mode))
(use-package vertico
  :config (vertico-mode))
(use-package marginalia
  :config (marginalia-mode))
(use-package orderless
  :init
  (setq completion-styles '(orderless basic)
	completion-category-overrides '((file (styles basic partial-completion)))))
(use-package corfu
  :init (setq corfu-auto t)
  :config (global-corfu-mode))
(use-package cape
  :init
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-abbrev)
  (add-to-list 'completion-at-point-functions #'cape-dict)
  (add-to-list 'completion-at-point-functions #'cape-history)
  (add-to-list 'completion-at-point-functions #'cape-file))
(use-package consult
  :init
  (keymap-global-set "M-y" 'consult-yank-pop)
  (keymap-global-set "M-g g" 'consult-goto-line)
  (keymap-global-set "M-g M-g" 'consult-goto-line)
  (keymap-global-set "C-x b" 'consult-buffer)
  (keymap-global-set "C-c c f" 'consult-find)
  (keymap-global-set "C-c c g" 'consult-grep)
  (keymap-global-set "C-c c l" 'consult-line)
  (keymap-global-set "C-c c L" 'consult-line-multi))
(use-package which-key
  :config (which-key-mode))
(use-package magit)
(use-package vterm
  :config
  (use-package multi-vterm
    :init (keymap-global-set "C-c v v" 'multi-vterm))
  (use-package vterm-toggle
    :init (keymap-global-set "C-c v t" 'vterm-toggle)))
(use-package doom-themes
  :config (load-theme 'doom-one t))
(use-package doom-modeline
  :config (doom-modeline-mode))
(use-package treemacs
  :init (keymap-global-set "C-c t" 'treemacs))
(use-package minimap
  :init
  (setq minimap-window-location 'right)
  (keymap-global-set "C-c m" 'minimap-mode))
(use-package beacon
  :config (beacon-mode))
(use-package lua-mode)
(use-package yaml-mode)
