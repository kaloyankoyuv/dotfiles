(setq make-backup-files nil
      initial-scratch-message nil
      inhibit-startup-screen t
      scroll-conservatively 1000
      scroll-margin 5
      ring-bell-function 'ignore
      display-line-numbers-type 'relative
      custom-file "~/.config/emacs/custom.el")

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)
(column-number-mode 1)
(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)
(electric-pair-mode 1)
(display-time-mode 1)
(display-battery-mode 1)

(add-to-list 'default-frame-alist
             '(font . "JetBrainsMono Nerd Font-10"))

(keymap-global-set "C-c f" 'find-name-dired)
(keymap-global-set "C-c g" 'rgrep)
(keymap-global-set "C-c b" 'ibuffer)
(keymap-global-set "C-c e" 'eshell)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(use-package vertico
  :ensure t
  :config (vertico-mode 1))
(use-package marginalia
  :ensure t
  :config (marginalia-mode 1))
(use-package orderless
  :ensure t
  :init
  (setq completion-styles '(orderless basic)
	completion-category-overrides '((file (styles basic partial-completion)))))
(use-package corfu
  :ensure t
  :init (setq corfu-auto t)
  :config (global-corfu-mode 1))
(use-package cape
  :ensure t
  :config
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-abbrev)
  (add-to-list 'completion-at-point-functions #'cape-dict)
  (add-to-list 'completion-at-point-functions #'cape-history)
  (add-to-list 'completion-at-point-functions #'cape-file))
(use-package which-key
  :ensure t
  :config (which-key-mode 1))
(use-package magit
  :ensure t)
(use-package doom-themes
  :ensure t
  :config (load-theme 'doom-one t))
(use-package doom-modeline
  :ensure t
  :config (doom-modeline-mode 1))
