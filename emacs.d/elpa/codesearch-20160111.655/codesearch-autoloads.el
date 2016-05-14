;;; codesearch-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (codesearch-list-directories codesearch-reset codesearch-update-index
;;;;;;  codesearch-build-index) "codesearch" "codesearch.el" (22327
;;;;;;  16434 673595 321000))
;;; Generated autoloads from codesearch.el

(defvar codesearch-pattern-history nil)

(autoload 'codesearch-build-index "codesearch" "\
Add the contents of DIR to the index.

\(fn DIR)" t nil)

(autoload 'codesearch-update-index "codesearch" "\
Rescan all of the directories currently in the index, updating
the index with the new contents.

\(fn)" t nil)

(autoload 'codesearch-reset "codesearch" "\
Reset (delete) the codesearch index.

\(fn)" t nil)

(autoload 'codesearch-list-directories "codesearch" "\
List the directories currently being indexed.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("codesearch-pkg.el") (22327 16434 750617
;;;;;;  116000))

;;;***

(provide 'codesearch-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; codesearch-autoloads.el ends here
