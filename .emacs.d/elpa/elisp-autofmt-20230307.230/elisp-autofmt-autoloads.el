;;; elisp-autofmt-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "elisp-autofmt" "elisp-autofmt.el" (0 0 0 0))
;;; Generated autoloads from elisp-autofmt.el

(put 'elisp-autofmt-style 'safe-local-variable #'symbolp)

(put 'elisp-autofmt-format-quoted 'safe-local-variable #'booleanp)

(put 'elisp-autofmt-empty-line-max 'safe-local-variable #'integerp)

(put 'elisp-autofmt-load-packages-local 'safe-local-variable #'elisp-autofmt-list-of-strings-p)

(autoload 'elisp-autofmt-buffer-to-file "elisp-autofmt" "\
Auto format the current buffer, writing it's output to a file.

This is intended for use by batch processing scripts,
where loading changes back into the buffer is not important." nil nil)

(autoload 'elisp-autofmt-buffer "elisp-autofmt" "\
Auto format the current buffer." t nil)

(autoload 'elisp-autofmt-region "elisp-autofmt" "\
Auto format the active region of the current buffer.
Optionally use BEG & END, otherwise an active region is required.
Optionally pass in IS-INTERACTIVE to display a status message from formatting.

\(fn &optional BEG END IS-INTERACTIVE)" t nil)

(autoload 'elisp-autofmt-region-dwim "elisp-autofmt" "\
Context sensitive auto formatting of the current buffer.
When there is an active region, this is used,
otherwise format the surrounding S-expression." t nil)

(autoload 'elisp-autofmt-check-elisp-autofmt-exists "elisp-autofmt" "\
Return non-nil when `.elisp-autofmt' is found in a parent directory." nil nil)

(autoload 'elisp-autofmt-list-of-strings-p "elisp-autofmt" "\
Return t when OBJ is a list of strings.

\(fn OBJ)" nil nil)

(autoload 'elisp-autofmt-mode "elisp-autofmt" "\
Elisp-AutoFMT minor mode.

This is a minor mode.  If called interactively, toggle the
`Elisp-Autofmt mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `elisp-autofmt-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "elisp-autofmt" '("elisp-autofmt-"))

;;;***

;;;### (autoloads nil nil ("elisp-autofmt-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; elisp-autofmt-autoloads.el ends here
