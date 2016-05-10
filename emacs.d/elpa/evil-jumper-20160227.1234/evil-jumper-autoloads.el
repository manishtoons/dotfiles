;;; evil-jumper-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (turn-off-evil-jumper-mode turn-on-evil-jumper-mode
;;;;;;  evil-jumper-mode) "evil-jumper" "evil-jumper.el" (22268 1464
;;;;;;  692922 14000))
;;; Generated autoloads from evil-jumper.el

(defvar evil-jumper-mode nil "\
Non-nil if Evil-Jumper mode is enabled.
See the command `evil-jumper-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `evil-jumper-mode'.")

(custom-autoload 'evil-jumper-mode "evil-jumper" nil)

(autoload 'evil-jumper-mode "evil-jumper" "\
Global minor mode for vim jumplist emulation.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-evil-jumper-mode "evil-jumper" "\
Turns on vim jumplist emulation.

\(fn)" t nil)

(autoload 'turn-off-evil-jumper-mode "evil-jumper" "\
Turns off vim jumplist emulation.

\(fn)" t nil)

(defalias 'global-evil-jumper-mode 'evil-jumper-mode)

;;;***

;;;### (autoloads nil nil ("evil-jumper-pkg.el") (22268 1464 783739
;;;;;;  400000))

;;;***

(provide 'evil-jumper-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; evil-jumper-autoloads.el ends here
