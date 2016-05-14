;;; ace-popup-menu-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ace-popup-menu ace-popup-menu-mode) "ace-popup-menu"
;;;;;;  "ace-popup-menu.el" (22327 13586 350751 297000))
;;; Generated autoloads from ace-popup-menu.el

(defvar ace-popup-menu-mode nil "\
Non-nil if Ace-Popup-Menu mode is enabled.
See the command `ace-popup-menu-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ace-popup-menu-mode'.")

(custom-autoload 'ace-popup-menu-mode "ace-popup-menu" nil)

(autoload 'ace-popup-menu-mode "ace-popup-menu" "\
Toggle `ace-popup-menu-mode' minor mode.

With a prefix argument ARG, enable `ace-popup-menu mode' if ARG
is positive, and disable it otherwise.  If called from Lisp,
enable the mode if ARG is omitted or NIL, and toggle it if ARG is
`toggle'.

This minor mode is global. When it's active any call to
`x-popup-menu' will result in call of `ace-popup-menu'
instead. This function in turn implements more efficient
interface to select an option from a list. Emacs Lisp code can
also use `ace-popup-menu' directly, in this case it will work OK
even if the mode is disabled.

\(fn &optional ARG)" t nil)

(autoload 'ace-popup-menu "ace-popup-menu" "\
Pop up menu in a temporary window and return user's selection.

Argument POSITION is taken for compatibility and ignored unless
it's NIL, in this case this function has no effect.  For meaning
of MENU argument see description of `x-popup-menu'.

Every selectable item in the menu is labeled with a letter (or
two).  User can press letter corresponding to desired menu item
and he is done.

\(fn POSITION MENU)" nil nil)

;;;***

;;;### (autoloads nil nil ("ace-popup-menu-pkg.el") (22327 13586
;;;;;;  433198 796000))

;;;***

(provide 'ace-popup-menu-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ace-popup-menu-autoloads.el ends here
