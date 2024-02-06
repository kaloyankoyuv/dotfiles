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

(use-package all-the-icons)

(use-package doom-themes
  :custom
  (doom-themes-treemacs-enable-variable-pitch nil)
  (doom-themes-treemacs-theme "doom-colors")
  :config
  (load-theme 'doom-one t)
  (doom-themes-treemacs-config))

(use-package doom-modeline
  :config
  (doom-modeline-mode))

(use-package rainbow-mode
  :hook
  (prog-mode . rainbow-mode))

(use-package rainbow-delimiters
  :hook
  (prog-mode . rainbow-delimiters-mode))

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
  :bind
  ("C-x b" . consult-buffer)
  ("C-y" . consult-yank-from-kill-ring)
  ("M-g g" . consult-goto-line)
  ("M-g M-g" . consult-goto-line))

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

(use-package beacon
  :config
  (beacon-mode))

(use-package expand-region
  :bind
  ("C-c s" . er/expand-region))

(use-package diff-hl
  :config
  (global-diff-hl-mode)
  :hook
  (dired-mode . diff-hl-dired-mode))

(use-package minimap
  :custom
  (minimap-window-location 'right)
  :config
  (minimap-mode))

(use-package dashboard
  :custom
  (initial-buffer-choice 'dashboard-open)
  (dashboard-startup-banner 'logo)
  (dashboard-set-heading-icons t)
  (dashboard-set-file-icons t)
  (dashboard-center-content t)
  (dashboard-projects-backend 'project-el)
  (dashboard-items '((recents  . 10)
		     (projects . 10)))
  :config
  (dashboard-setup-startup-hook))

(use-package elfeed
  :custom
  (elfeed-feeds
   '(
     "https://reddit.com/r/linux.rss"
     "https://reddit.com/r/bulgaria.rss"
     "https://reddit.com/r/emacs.rss"
     "https://www.phoronix.com/rss.php"
     "https://news.itsfoss.com/latest/rss/"
     "https://itsfoss.com/rss/"
     "https://youtube.com/feeds/videos.xml?channel_id=UCld68syR8Wi-GY_n4CaoJGA" ; Brodie Robertson
     "https://youtube.com/feeds/videos.xml?channel_id=UCVls1GmFKf6WlTraIb_IaJg" ; Distro Tube
     "https://youtube.com/feeds/videos.xml?channel_id=UC7YOGHUfC1Tb6E4pudI9STA" ; Mental Outlaw
     "https://youtube.com/feeds/videos.xml?channel_id=UCq6VFHwMzcMXbuKyG7SQYIg" ; Moist Critical
     "https://youtube.com/feeds/videos.xml?channel_id=UCXuqSBlHAE6Xw-yeJA0Tunw" ; Linus Tech Tips
     "https://youtube.com/feeds/videos.xml?channel_id=UCTzLRZUgelatKZ4nyIKcAbg" ; Hardware Canucks
     "https://youtube.com/feeds/videos.xml?channel_id=UCBq5p-xOla8xhnrbhu8AIAg" ; Tech Over Tea
     "https://youtube.com/feeds/videos.xml?channel_id=UCBJycsmduvYEL83R_U4JriQ" ; MKBHD
     "https://youtube.com/feeds/videos.xml?channel_id=UCpOZ5vixSKec-bWKDkyU_vg" ; Aethelthryth Clips
     "https://youtube.com/feeds/videos.xml?channel_id=UCmw-QGOHbHA5cDAvwwqUTKQ" ; Zaney
     )))

