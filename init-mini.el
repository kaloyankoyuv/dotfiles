(setq
 make-backup-files nil
 initial-scratch-message nil
 inhibit-startup-message t
 scroll-conservatively 1000
 scroll-margin 5
 ring-bell-function 'ignore
 custom-file "~/.config/emacs/custom.el"
 )

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(electric-pair-mode 1)

(load-theme 'modus-vivendi)
(add-to-list 'default-frame-alist
             '(font . "JetBrainsMono Nerd Font-10"))

(keymap-global-set "C-c f" 'find-name-dired)
(keymap-global-set "C-c g" 'rgrep)
(keymap-global-set "C-c b" 'ibuffer)
(keymap-global-set "C-c e" 'eshell)
