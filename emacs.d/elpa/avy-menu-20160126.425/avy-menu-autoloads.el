;;; avy-menu-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (avy-menu) "avy-menu" "avy-menu.el" (22327 13585
;;;;;;  556741 463000))
;;; Generated autoloads from avy-menu.el

(autoload 'avy-menu "avy-menu" "\
Show popup menu in a temporary window and return user's selection.

BUFFER-OR-NAME specifies name of the buffer (or buffer itself)
that hosts menu options.  MENU itself should be a list of the
form (TITLE PANE1 PANE2 …), where each pane is a list of
form (TITLE ITEM1 ITEM2 …).  Each item is normally a cons
cell (STRING . VALUE), but a string can appear as an item — that
makes a non-selectable item in the menu.  Also, empty strings
start new sub-section.

If SHOW-PANE-HEADER is not NIL, show pane headers (titles),
otherwise hide them.

Returned value is VALUE if user has selected something and NIL if
he has cancelled the whole menu or pressed key that does not
correspond to any available option.

\(fn BUFFER-OR-NAME MENU &optional SHOW-PANE-HEADER)" nil nil)

;;;***

;;;### (autoloads nil nil ("avy-menu-pkg.el") (22327 13585 643034
;;;;;;  314000))

;;;***

(provide 'avy-menu-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; avy-menu-autoloads.el ends here
