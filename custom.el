(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 208 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(column-number-mode nil)
 '(css-mode-indent-depth 2 t)
 '(default-frame-alist (quote ((tool-bar-lines . 0) (cursor-type . box) (vertical-scroll-bars . right) (fringe) (modeline . t) (background-mode . dark) (menu-bar-lines . 0) (right-fringe . 11) (left-fringe . 3) (border-color . "black") (cursor-color . "Red") (mouse-color . "black") (background-color . "gray4") (foreground-color . "papaya whip") (font . "-apple-monaco-medium-r-normal--12-0-72-72-m-0-iso10646-1"))))
 '(fill-column 100)
 '(global-visual-line-mode nil)
 '(javascript-indent-level 2)
 '(ns-tool-bar-display-mode nil t)
 '(ns-tool-bar-size-mode nil t)
 '(standard-indent 2)
 '(tab-width 2)
 '(toolbar-menu-show--copy nil)
 '(toolbar-menu-show--customize t)
 '(toolbar-menu-show--cut nil)
 '(toolbar-menu-show--paste nil)
 '(visual-line-mode nil t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(autoface-default ((t (:inherit default))))
 '(comint-mode-default ((t (:inherit autoface-default))) t)
 '(completion-list-mode-default ((t (:inherit autoface-default))) t)
 '(diff-mode-default ((t (:inherit default))) t)
 '(dired-mode-default ((t (:inherit autoface-default))) t)
 '(emacs-lisp-mode-default ((t (:inherit autoface-default))) t)
 '(font-lock-constant-face ((((class color) (min-colors 88) (background dark)) (:foreground "996633"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background dark)) (:foreground "khaki4"))))
 '(fundamental-mode-default ((t (:inherit autoface-default))) t)
 '(grep-mode-default ((t (:inherit compilation-mode-default))) t)
 '(help-mode-default ((t (:inherit autoface-default :background "gray4"))) t)
 '(hl-line ((((class color) (background dark)) nil)))
 '(linum ((t (:background "gray" :foreground "#966"))))
 '(mumamo-background-chunk-submode ((((class color) (min-colors 88) (background dark)) (:background "gray6"))))
 '(nxhtml-mode-default ((t (:inherit nxml-mode-default))) t)
 '(nxml-mode-default ((t (:inherit autoface-default))) t)
 '(ruby-mode-default ((t (:inherit autoface-default :height 160 :family "Inconsolata"))) t)
 '(vc-git-log-view-mode-default ((t (:inherit log-view-mode-default))) t))

;; Check custom-file compatibility
(when (and (boundp 'aquamacs-version-id)
           (< (floor (/ aquamacs-version-id 10))
	   (floor (/ aquamacs-customization-version-id 10))))
  (defadvice frame-notice-user-settings (before show-version-warning activate)
    (defvar aquamacs-backup-custom-file nil "Backup of `custom-file', if any.")
    (setq aquamacs-backup-custom-file "/Users/tra/.emacs.d/customizations.1.7.el")
    (let ((msg "Aquamacs options were saved by a more recent program version.
Errors may occur.  Save Options to overwrite the customization file. The original, older customization file was backed up to /Users/tra/.emacs.d/customizations.1.7.el."))
      (if window-system
	  (x-popup-dialog t (list msg '("OK" . nil) 'no-cancel) "Warning")
	(message msg)))))
;; End compatibility check
