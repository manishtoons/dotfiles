
;; ------------------------------- 
;; basic configurations
;; -------------------------------
(setq ido-enable-tramp-completion nil)
(ido-mode 1)
(ido-everywhere 1)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-enable-tramp-completion nil)
(setq ido-enable-last-directory-history nil)
(setq ido-confirm-unique-completion nil)
(setq ido-use-filename-at-point t)

;; remap C-w to kill word, as it should be
(global-unset-key (kbd "C-w"))
(global-set-key (kbd "C-w") 'backward-kill-word) 

;; Disable mouse wheel (and two finger swipe) scrolling because
;; it scrolls horribly and I would rather work without it.

(mouse-wheel-mode -1)

(global-set-key [wheel-up] 'ignore)
(global-set-key [wheel-down] 'ignore)
(global-set-key [double-wheel-up] 'ignore)
(global-set-key [double-wheel-down] 'ignore)
(global-set-key [triple-wheel-up] 'ignore)
(global-set-key [triple-wheel-down] 'ignore)

(dolist (k '([mouse-1] [down-mouse-1] [drag-mouse-1] [double-mouse-1] [triple-mouse-1]  
             [mouse-2] [down-mouse-2] [drag-mouse-2] [double-mouse-2] [triple-mouse-2]
             [mouse-3] [down-mouse-3] [drag-mouse-3] [double-mouse-3] [triple-mouse-3]
             [mouse-4] [down-mouse-4] [drag-mouse-4] [double-mouse-4] [triple-mouse-4]
             [mouse-5] [down-mouse-5] [drag-mouse-5] [double-mouse-5] [triple-mouse-5]))
  (global-unset-key k))


;; Spaces instead of tabs
;; Tabs are evil! I want spaces instead of tabs, and want exactly 4 
;; spaces instead of a tab. Note to self: 
;; Apparently emacs is smart enough to not do this in 
;; Python, which is a good thing.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default tab-stop-list (number-sequence 4 120 4))
(setq c-basic-indent 4)
(setq sh-basic-offset 4)

;; remove the strange line between two fingers
(set-face-attribute 'vertical-border nil :foreground (face-attribute 'fringe :background))

;; We also want to get rid of the splash screen and start in the home directory.
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)
;; (setq initial-buffer-choice "~/workspace/")

;; Let's set the height and width of the window. 
;; The last line gets rid of the ugly bright white 
;; line when splitting a window.
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 90))

;; highlight current line
(global-hl-line-mode 1)

;; ------------------------ Parentheses -------------------------
;; show parantheses
(show-paren-mode 1)
(setq show-paren-delay 0)

;; insert closing paren automagically
(electric-pair-mode 1)

;; ----------- vim like scrolling ------------
;; This setting was probably what made me switch. 
;; I HATE the normal way emacs scrolls. 
;; This lets it scroll like in vim.
(setq scroll-step            1
      scroll-conservatively  10000)


;; ----------------- autosave and backups -------------------
;; It's annoying when autosave files are in the same directory. 
;; Too much clutter. Instead, let's save them somewhere in ~/.emacs.d/.
(defvar backup-dir (expand-file-name "~/.emacs.d/emacs_backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))
(setq tramp-backup-directory-alist backup-directory-alist)
(setq tramp-auto-save-directory autosave-dir)

;; --------------------- packaging ---------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/"))
	     
;; (add-to-list 'load-path "~/.emacs.d/elpa/evil-20160329.2251/")
;; (add-to-list 'package-archives
;;             '("elpy" . "https://jorgenschaefer.github.io/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    material-theme))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; ------------------------ theme and appearence ------------------
;; (load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally

;; ---------------------- navigations ----------------------------
;; set hotkey for selecting split windows
(global-set-key (kbd "C-x w") 'ace-select-window)

;; Change cursor based on reading or writing
;; Always reset the cursor color and the faces of the highlight line. 
;; Also, use vertical bar if we're in edit mode, and use box if in read-only mode, 
;; (almost like in gvim…)
(defun dennis-set-cursor ()
  (set-cursor-color "gold") ;; set cursor color to gold
  (set-face-attribute 'region nil :background "gold" :foreground "black")
  (set-face-background 'hl-line "gray30")
  (set-face-foreground 'highlight nil)
  (set-face-underline 'hl-line nil)
  (cond
   (buffer-read-only
    (setq cursor-type 'box))
   (t
    (setq cursor-type 'bar)))
  ;; red cursor for overwrite mode
  (when overwrite-mode
    (set-cursor-color "red")))
;; (dennis-set-cursor)

;; This needs to run after every command, 
;; since some modes screw with the cursor.
;;(add-hook 'post-command-hook 'dennis-set-cursor)

;; ------------------------------- 
;; python configurations
;; -------------------------------
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; --- elpy ---
(elpy-enable)
;; (elpy-use-ipython)
(setq elpy-rpc-backend "jedi")
(setq elpy-modules
      (quote
      (elpy-module-company
       elpy-module-eldoc
       elpy-module-pyvenv
       elpy-module-yasnippet
       elpy-module-sane-defaults)))

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'python-mode-hook 'elpy-enable)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; disable highlight mode

;; we want to show trailing whitespace. 
;; Trailing whitespace is the devil.
(require 'whitespace)
(setq-default show-trailing-whitespace t)


;; ------------- line numbers ------------------

(require 'linum)

;; ------------------------------- 
;; evil configurations
;; -------------------------------
;; ;; (require 'evil)
;; ;; (evil-mode 1)
;; ;; (setq evil-want-C-u-scroll t)

;; ; help - narrow fuzzy search
;; ; set the global key M-x to helms key
(require 'helm-config)
(global-unset-key (kbd "M-s o"))
(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "M-s o") 'helm-swoop)

(global-unset-key (kbd "C-x b"))
(global-set-key (kbd "C-x b") 'helm-mini)

(setq helm-split-window-default-side 'same)

(menu-bar-mode 0)
(tool-bar-mode 0)

(global-unset-key (kbd "C-x w"))
(global-set-key (kbd "C-x q") 'ace-select-window)

;; (global-unset-key (kbd "C-x c i"))
;; (globak-set-key (kbd "C-c i") 'helm-semantic-or-imenu)

;; (desktop-save-mode 1)
;; (define-key global-map (kbd "M-<up>") 'windmove-up)
;; (define-key global-map (kbd "M-<down>") 'windmove-down)
;; (define-key global-map (kbd "M-<left>") 'windmove-left)
;; (define-key global-map (kbd "M-<right>") 'windmove-right)

;; -- automatic balance buffer size
(defun size-callback ()
  (cond ((> (frame-pixel-width) 1280) '(90 . 0.75))
        (t                            '(0.5 . 0.5))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (goto-chg highlight-symbol writeroom-mode zencoding-mode zoom helm-projectile ace-window py-autopep8 helm elpy better-defaults)))
 '(zoom-size (quote size-callback)))

;; (custom-set-variables
;;  '(zoom-size '(0.618 . 0.618)))

(global-set-key (kbd "C-x +") 'zoom)

;; -- highlight word under cursor
(highlight-symbol-mode 1)
(global-set-key (kbd "M-p") 'highlight-symbol-prev)
(global-set-key (kbd "M-n") 'highlight-symbol-next)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
