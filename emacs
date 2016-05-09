(setq ido-enable-tramp-completion nil)
(ido-mode 1)
(ido-everywhere 1)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-enable-tramp-completion nil)
(setq ido-enable-last-directory-history nil)
(setq ido-confirm-unique-completion nil)
(setq ido-use-filename-at-point t)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional

; evil mode
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/elpa/evil-20160329.2251/")

(package-initialize)
(require 'evil)
(evil-mode 1)

; help - narrow fuzzy search
(require 'helm-config)
; set the global key M-x to helms key
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)
