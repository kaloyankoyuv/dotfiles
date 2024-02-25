(use-package use-package
  :custom
  (use-package-always-ensure t)
  (use-package-always-demand t))

(use-package package
  :init
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))

(use-package emacs
  :custom
  (make-backup-files nil)
  (completion-show-help nil)
  (inhibit-startup-screen t)
  (completion-auto-select t)
  (completions-max-height 20)
  (completions-format 'one-column)
  (custom-file "~/.config/emacs/custom.el")
  :init
  (add-to-list 'default-frame-alist '(font . "Iosevka Nerd Font-10"))
  :config
  (menu-bar-mode 0)
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (blink-cursor-mode 0)
  (load custom-file))

(use-package display-line-numbers
  :custom
  (display-line-numbers-type 'visual)
  :hook
  (find-file . display-line-numbers-mode))

(use-package hl-line
  :hook
  (find-file . hl-line-mode))

(use-package elec-pair
  :config
  (electric-pair-mode))

(use-package eglot
  :bind
  ("C-c f" . eglot-format)
  ("C-c d" . eglot-find-declaration)
  :hook
  (c-ts-mode . eglot-ensure)
  (c++-ts-mode . eglot-ensure))

(use-package yasnippet)

(use-package modus-themes
  :custom
  (modus-themes-bold-constructs t)
  (modus-themes-italic-constructs t)
  :config
  (load-theme 'modus-vivendi t))

(use-package c-ts-mode
  :init
  (add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))
  (add-to-list 'major-mode-remap-alist '(c++-mode . c++-ts-mode))
  (add-to-list 'major-mode-remap-alist '(c-or-c++-mode . c-or-c++-ts-mode)))

(use-package elfeed
  :custom
  (elfeed-feeds
   '(
     "https://reddit.com/r/linux.rss"
     "https://reddit.com/r/emacs.rss"
     "https://www.phoronix.com/rss.php"
     "https://news.itsfoss.com/latest/rss/"
     "https://itsfoss.com/rss/"
     "https://archlinux.org/feeds/news/"
     "https://news.ycombinator.com/rss"
     "https://feeds.arstechnica.com/arstechnica/index"
     "https://rss.slashdot.org/Slashdot/slashdotMain"
     "https://youtube.com/feeds/videos.xml?channel_id=UCld68syR8Wi-GY_n4CaoJGA" ; Brodie Robertson
     "https://youtube.com/feeds/videos.xml?channel_id=UCVls1GmFKf6WlTraIb_IaJg" ; Distro Tube
     "https://youtube.com/feeds/videos.xml?channel_id=UC7YOGHUfC1Tb6E4pudI9STA" ; Mental Outlaw
     "https://youtube.com/feeds/videos.xml?channel_id=UCq6VFHwMzcMXbuKyG7SQYIg" ; Moist Critical
     "https://youtube.com/feeds/videos.xml?channel_id=UCQeRaTukNYft1_6AZPACnog" ; Asmongold
     "https://youtube.com/feeds/videos.xml?channel_id=UCtMVHI3AJD4Qk4hcbZnI9ZQ" ; Some Ordinary Gamers
     "https://youtube.com/feeds/videos.xml?channel_id=UCXuqSBlHAE6Xw-yeJA0Tunw" ; Linus Tech Tips
     "https://youtube.com/feeds/videos.xml?channel_id=UCTzLRZUgelatKZ4nyIKcAbg" ; Hardware Canucks
     "https://youtube.com/feeds/videos.xml?channel_id=UCBq5p-xOla8xhnrbhu8AIAg" ; Tech Over Tea
     "https://youtube.com/feeds/videos.xml?channel_id=UCBJycsmduvYEL83R_U4JriQ" ; MKBHD
     "https://youtube.com/feeds/videos.xml?channel_id=UCpOZ5vixSKec-bWKDkyU_vg" ; Aethelthryth Clips
     "https://youtube.com/feeds/videos.xml?channel_id=UCmw-QGOHbHA5cDAvwwqUTKQ" ; Zaney
     "https://youtube.com/feeds/videos.xml?channel_id=UCHnyfMqiRRG1u-2MsSQLbXA" ; Veritasium
     "https://youtube.com/feeds/videos.xml?channel_id=UC5UAwBUum7CPN5buc-_N1Fw" ; The Linux Experiment
     "https://youtube.com/feeds/videos.xml?channel_id=UCyXWqtekGVSLRz5Txwte6Bg" ; Don Brutar
     "https://youtube.com/feeds/videos.xml?channel_id=UC1s1OsWNYDFgbROPV-q5arg" ; Michael Horn
     "https://youtube.com/feeds/videos.xml?channel_id=UCJetJ7nDNLlEzDLXv7KIo0w" ; Gavin Freeborn
     "https://youtube.com/feeds/videos.xml?channel_id=UCYO_jab_esuFRV4b17AJtAw" ; 3Blue1Brown
     )))

