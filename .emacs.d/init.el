;;; init.el --- Emacs configuration -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("ef2b2346702e5cbfd7eeaa699ba58528477fe48af333e6ffdafb864a2f30a505" default))
 '(display-line-numbers-type 'relative)
 '(doom-modeline-minor-modes t)
 '(elcord-quiet t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(copilot company vertico lsp-ui lsp-mode magit flycheck yasnippet-snippets which-key try elcord use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "~/.emacs.d/config.org")

(provide 'init)
;;; init.el ends here
