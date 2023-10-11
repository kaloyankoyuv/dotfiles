(use-package modus-themes :ensure t)
(use-package yasnippet :ensure t)
(use-package vertico :ensure t)
(use-package marginalia :ensure t)
(use-package orderless :ensure t)
(use-package corfu :ensure t)
(use-package magit :ensure t)
(use-package which-key :ensure t)

(setq make-backup-files nil
      initial-scratch-message nil
      inhibit-startup-screen t
      undo-no-redo t
      corfu-auto t
      scroll-conservatively 1000
      scroll-margin 5
      ring-bell-function 'ignore
      completion-styles '(orderless)
      custom-file "~/.config/emacs/custom.el")

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)
(column-number-mode)
(electric-pair-mode)
(display-time-mode)
(display-battery-mode)
(pixel-scroll-precision-mode)
(vertico-mode)
(marginalia-mode)
(global-corfu-mode)
(which-key-mode)

(load-theme 'modus-vivendi t)

(add-to-list 'default-frame-alist
             '(font . "SauceCodePro Nerd Font-10"))

(keymap-global-set "C-c f n" 'find-name-dired)
(keymap-global-set "C-c f g" 'find-grep-dired)
(keymap-global-set "C-c g" 'rgrep)
(keymap-global-set "C-c b" 'ibuffer)
(keymap-global-set "C-c e" 'eshell)

(add-hook 'prog-mode-hook
	  (lambda ()
	    (display-line-numbers-mode)
	    (hl-line-mode)
	    (flyspell-prog-mode)))

(add-hook 'c++-mode-hook 'eglot-ensure)

