(setq make-backup-files nil
      initial-scratch-message nil
      inhibit-startup-screen t
      scroll-conservatively 1000
      scroll-margin 5
      ring-bell-function 'ignore
      custom-file "~/.config/emacs/custom.el")

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)
(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)
(electric-pair-mode 1)

(add-to-list 'default-frame-alist
             '(font . "JetBrains Mono-10"))

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
(use-package consult
  :ensure t
  :init
  (setq consult-find-args "find")
  :config
  (keymap-global-set "C-c f" 'consult-find)
  (keymap-global-set "C-c g" 'consult-grep)
  (keymap-global-set "C-c s" 'consult-line)
  (keymap-global-set "C-c b" 'consult-buffer))
(use-package corfu
  :ensure t
  :init
  (setq corfu-auto t)
  :config
  (global-corfu-mode 1))
(use-package which-key
  :ensure t
  :config (which-key-mode 1))
(use-package doom-themes
  :ensure t
  :config (load-theme 'doom-one t))
(use-package doom-modeline
  :ensure t
  :config (doom-modeline-mode 1))
(use-package yaml-mode
  :ensure t)

