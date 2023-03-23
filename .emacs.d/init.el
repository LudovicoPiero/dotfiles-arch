(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("ef2b2346702e5cbfd7eeaa699ba58528477fe48af333e6ffdafb864a2f30a505" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(company vertico lsp-ui lsp-mode magit flycheck auto-complete yasnippet-snippets which-key try elcord elisp-autofmt use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Bootstrap 'use-package'
(eval-after-load 'gnutls
  '(add-to-list 'gnutls-trustfiles "/etc/ssl/cert.pem"))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'bind-key)
(setq use-package-always-ensure t)

;; Disable some GUI distractions. We set these manually to avoid starting
;; the corresponding minor modes.
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; Always show line and column number in the mode line.
(line-number-mode)
(column-number-mode)

;; Enable some features that are disabled by default.
(put 'narrow-to-region 'disabled nil)

;; Typically, I only want spaces when pressing the TAB key. I also
;; want 4 of them.
(setq-default indent-tabs-mode nil
              tab-width 4
              c-basic-offset 4)

;; Trailing white space are banned!
(setq-default show-trailing-whitespace t)

;; Use one space to end sentences.
(setq sentence-end-double-space nil)

;; I typically want to use UTF-8.
(prefer-coding-system 'utf-8)

;; Nicer handling of regions.
(transient-mark-mode 1)

;; Make moving cursor past bottom only scroll a single line rather
;; than half a page.
(setq scroll-step 1
      scroll-conservatively 5)

;; Enable highlighting of current line.
(global-hl-line-mode 1)

;; Avoid noisy bell.
(setq visible-bell t)

;; Improved handling of clipboard in GNU/Linux and otherwise.
(setq select-enable-clipboard t
      select-enable-primary t
      save-interprogram-paste-before-kill t)

;; Pasting with middle click should insert at point, not where the
;; click happened.
(setq mouse-yank-at-point t)

;; Only do candidate cycling if there are very few candidates.
(setq completion-cycle-threshold 3)

;; Enable a few useful commands that are initially disabled.
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Set a font
(add-to-list 'default-frame-alist
              '(font . "Iosevka Nerd Font 15"))
(column-number-mode 1)
(global-auto-revert-mode)
(global-display-line-numbers-mode)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default whitespace-style
              '(face
                tabs
                spaces
                trailing
                lines-tail
                newline
                missing-newline-at-eof
                space-before-tab
                indentation
                empty
                space-after-tab
                space-mark
                tab-mark
                newline-mark))

(fset 'yes-or-no-p 'y-or-n-p)

;; Long text goes below
(global-visual-line-mode t)

;; Stop creating backup and autosave files.
(setq make-backup-files nil
      auto-save-default nil)
;; Default is 4k, which is too low for LSP.
(setq read-process-output-max (* 1024 1024))

;; Stop emacs blinking
(setq visible-bell       nil
      ring-bell-function #'ignore)

;; Enable vertico
(use-package vertico
  :init
  (vertico-mode)

  ;; Different scroll margin
  ;; (setq vertico-scroll-margin 0)

  (setq vertico-count 5)

  ;; Grow and shrink the Vertico minibuffer
  ;; (setq vertico-resize t)

  ;; Optionally enable cycling for `vertico-next' and `vertico-previous'.
  ;; (setq vertico-cycle t)
  )

;; Persist history over Emacs restarts. Vertico sorts by history position.
(use-package savehist
  :init
  (savehist-mode))

(use-package try :ensure t)
(use-package which-key :ensure t :config (which-key-mode))
(use-package company
  :init
  (setq company-idle-delay 0.0
        company-minimum-prefix-length 1
        lsp-idle-delay 0.1)
  )

(use-package yasnippet-snippets
  :ensure t
  :config (yas-global-mode 1))

(use-package auto-complete
  :ensure t
  :init (progn (ac-config-default)
               (global-auto-complete-mode t)))

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

(use-package magit
  :ensure t
  :init (progn (bind-key "C-x g" 'magit-status)))

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook ((python-mode . lsp-deferred)
         (c-mode . lsp-deferred)
         (c++-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp lsp-deferred)

(use-package lsp-ui :commands lsp-ui-mode)

(use-package multiple-cursors
  :bind (("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this)))

(use-package catppuccin-theme
  :init (load-theme 'catppuccin t))

(use-package elcord
  :init (elcord-mode))

(provide 'init)
;;; init.el ends here
