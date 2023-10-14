(use-package ef-themes :ensure t)
(use-package yasnippet :ensure t)
(use-package vertico :ensure t)
(use-package marginalia :ensure t)
(use-package orderless :ensure t)
(use-package consult :ensure t)
(use-package corfu :ensure t)
(use-package cape :ensure t)
(use-package magit :ensure t)
(use-package which-key :ensure t)
(use-package eat :ensure t)

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
(global-hl-line-mode)
(global-display-line-numbers-mode)
(vertico-mode)
(marginalia-mode)
(global-corfu-mode)
(which-key-mode)

(ef-themes-load-random 'dark)

(add-to-list 'default-frame-alist
             '(font . "SauceCodePro Nerd Font-10"))

(keymap-global-set "C-c f n" 'find-name-dired)
(keymap-global-set "C-c f g" 'find-grep-dired)
(keymap-global-set "C-c g" 'rgrep)
(keymap-global-set "C-c b" 'ibuffer)
(keymap-global-set "C-c e" 'eshell)
(keymap-global-set "C-c t" 'eat)
(keymap-global-set "M-y" 'consult-yank-pop)
(keymap-global-set "M-g g" 'consult-goto-line)
(keymap-global-set "M-g M-g" 'consult-goto-line)
(keymap-global-set "C-x b" 'consult-buffer)
(keymap-global-set "C-c c f" 'consult-find)
(keymap-global-set "C-c c g" 'consult-grep)
(keymap-global-set "C-c c l" 'consult-line)
(keymap-global-set "C-c c L" 'consult-line-multi)

(add-to-list 'completion-at-point-functions #'cape-dabbrev)
(add-to-list 'completion-at-point-functions #'cape-dict)
(add-to-list 'completion-at-point-functions #'cape-file)

(add-hook 'c++-mode-hook 'eglot-ensure)

