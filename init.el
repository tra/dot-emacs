;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;
;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"

;; Load path etc.

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path (concat dotfiles-dir "/plugins"))
(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit"))
(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit/jabber"))

(setq autoload-file (concat dotfiles-dir "loaddefs.el"))
(setq package-user-dir (concat dotfiles-dir "elpa"))
(setq custom-file (concat dotfiles-dir "custom.el"))

;; These should be loaded on startup rather than autoloaded on demand
;; since they are likely to be used in every session

(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

;; full install of yasnippet so it's easier to add snippets
(add-to-list 'load-path (add-to-list 'load-path (concat dotfiles-dir "plugins/yasnippet")))
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory (concat dotfiles-dir "plugins/yasnippet/snippets"))
(require 'linum)
(setq linum-format "%4d ")
(global-linum-mode t)

;; in nxhtml-mode, the line numbers would switch off when going into
;; ruby fragments because the major mode changes, this prevents that
(add-hook 'after-change-major-mode-hook 'linum-on)
;;(add-hook 'after-change-major-mode-hook 'font-lock-fontify-buffer)

;; this must be loaded before ELPA since it bundles its own
;; out-of-date js stuff. TODO: fix it to use ELPA dependencies
(load "elpa-to-submit/nxhtml/autostart")

;; Load up ELPA, the package manager

(require 'package)
(package-initialize)
(require 'starter-kit-elpa)

;; Load up starter kit customizations

(require 'starter-kit-defuns)
(require 'starter-kit-bindings)
(require 'starter-kit-misc)
(require 'starter-kit-registers)
(require 'starter-kit-eshell)
(require 'starter-kit-lisp)
(require 'starter-kit-perl)
(require 'starter-kit-ruby)
;;(require 'starter-kit-js)

(regen-autoloads)
(load custom-file 'noerror)

;; More complicated packages that haven't made it into ELPA yet

;; rinari looks for sql-postgresql instead of sql-postgres
(defalias 'sql-postgresql 'sql-postgres)

(autoload 'jabber-connect "jabber" "" t)
;; TODO: rinari, slime

;; Work around a bug on OS X where system-name is FQDN
(if (eq system-type 'darwin)
    (setq system-name (car (split-string system-name "\\."))))

;; You can keep system- or user-specific customizations here
(setq system-specific-config (concat dotfiles-dir system-name ".el")
      user-specific-config (concat dotfiles-dir user-login-name ".el")
      user-specific-dir (concat dotfiles-dir user-login-name))
(add-to-list 'load-path user-specific-dir)

(if (file-exists-p system-specific-config) (load system-specific-config))
(if (file-exists-p user-specific-config) (load user-specific-config))
(if (file-exists-p user-specific-dir)
  (mapc #'load (directory-files user-specific-dir nil ".*el$")))

;; textmate.el from topfunky (maybe works better with aquamacs?)
;(require 'textmate)
(textmate-mode)

(require 'org-install)
;; Set to the location of your Org files on your local system
(setq org-directory "~/Dropbox/org")
;; Set to the name of the file where new mobile notes will be stored
(setq org-mobile-inbox-for-pull "~/Dropbox/org/from-mobile.org")
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-agenda-files (list "~/Dropbox/org/work.org"
                             "~/Dropbox/org/home.org"
                             "~/Dropbox/org/squeat.org"))

(setq-default show-trailing-whitespace t)
(setq-default indicate-empty-lines t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; indent more like javascript (avoid pushing stuff even with the left paren)
(setq ruby-deep-indent-paren nil)

;; elrang stuff (assumes erlang installed via homebrew)
(add-to-list 'load-path "/usr/local/lib/erlang/lib/tools-2.6.6.4/emacs")
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq erlang-compile-extra-opts
      '((i . \"/usr/local/lib/ejabberd/include\")
        (i . \"/usr/local/lib/erlang/lib/mysql-r13/include\")))
(require 'erlang-start)
(require 'erlang-flymake)
(setq erlang-indent-level 2)

;; init.el ends here
