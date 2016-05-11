;;; evil-quickscope-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (turn-off-evil-quickscope-mode turn-on-evil-quickscope-mode
;;;;;;  global-evil-quickscope-mode evil-quickscope-mode turn-off-evil-quickscope-always-mode
;;;;;;  turn-on-evil-quickscope-always-mode global-evil-quickscope-always-mode
;;;;;;  evil-quickscope-always-mode evil-quickscope-find-char-to-backward
;;;;;;  evil-quickscope-find-char-to evil-quickscope-find-char-backward
;;;;;;  evil-quickscope-find-char) "evil-quickscope" "evil-quickscope.el"
;;;;;;  (22323 26733 59236 456000))
;;; Generated autoloads from evil-quickscope.el

(autoload 'evil-quickscope-find-char "evil-quickscope" "\
Move to the next COUNT'th occurence of CHAR.
Highlight first or second unique letter of each word.

\(fn)" t nil)

(autoload 'evil-quickscope-find-char-backward "evil-quickscope" "\
Move to the previous COUNT'th occurence of CHAR.
Highlight first or second unique letter of each word.

\(fn)" t nil)

(autoload 'evil-quickscope-find-char-to "evil-quickscope" "\
Move before the next COUNT'th occurence of CHAR.
Highlight first or second unique letter of each word.

\(fn)" t nil)

(autoload 'evil-quickscope-find-char-to-backward "evil-quickscope" "\
Move before the previous COUNT'th occurence of CHAR.
Highlight first or second unique letter of each word.

\(fn)" t nil)

(autoload 'evil-quickscope-always-mode "evil-quickscope" "\
Quickscope mode for evil. Highlights per-word targets for f,F,t,T vim
movement commands. Target highglights always on.

\(fn &optional ARG)" t nil)

(defvar global-evil-quickscope-always-mode nil "\
Non-nil if Global-Evil-Quickscope-Always mode is enabled.
See the command `global-evil-quickscope-always-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-quickscope-always-mode'.")

(custom-autoload 'global-evil-quickscope-always-mode "evil-quickscope" nil)

(autoload 'global-evil-quickscope-always-mode "evil-quickscope" "\
Toggle Evil-Quickscope-Always mode in all buffers.
With prefix ARG, enable Global-Evil-Quickscope-Always mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Quickscope-Always mode is enabled in all buffers where
`turn-on-evil-quickscope-always-mode' would do it.
See `evil-quickscope-always-mode' for more information on Evil-Quickscope-Always mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-evil-quickscope-always-mode "evil-quickscope" "\
Enable `evil-quickscope-mode'.

\(fn)" t nil)

(autoload 'turn-off-evil-quickscope-always-mode "evil-quickscope" "\


\(fn)" t nil)

(autoload 'evil-quickscope-mode "evil-quickscope" "\
Quickscope mode for evil. Highlights per-word targets for f,F,t,T vim
movement commands. Target highlights activate when f,F,t,T pressed.

\(fn &optional ARG)" t nil)

(defvar global-evil-quickscope-mode nil "\
Non-nil if Global-Evil-Quickscope mode is enabled.
See the command `global-evil-quickscope-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-quickscope-mode'.")

(custom-autoload 'global-evil-quickscope-mode "evil-quickscope" nil)

(autoload 'global-evil-quickscope-mode "evil-quickscope" "\
Toggle Evil-Quickscope mode in all buffers.
With prefix ARG, enable Global-Evil-Quickscope mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Quickscope mode is enabled in all buffers where
`turn-on-evil-quickscope-mode' would do it.
See `evil-quickscope-mode' for more information on Evil-Quickscope mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-evil-quickscope-mode "evil-quickscope" "\
Enable `evil-quickscope-mode'.

\(fn)" t nil)

(autoload 'turn-off-evil-quickscope-mode "evil-quickscope" "\
Disable `evil-quickscope-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("evil-quickscope-pkg.el") (22323 26733
;;;;;;  244424 166000))

;;;***

(provide 'evil-quickscope-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; evil-quickscope-autoloads.el ends here
