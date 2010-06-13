(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 208 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(column-number-mode nil)
 '(css-indent-offset 2)
 '(css-mode-indent-depth 2 t)
 '(default-frame-alist (quote ((cursor-type . box) (vertical-scroll-bars . right) (fringe) (modeline . t) (border-color . "black") (mouse-color . "black") (background-mode . dark) (tool-bar-lines . 0) (menu-bar-lines . 1) (right-fringe . 12) (left-fringe . 4) (cursor-color . "Red") (background-color . "gray4") (foreground-color . "papaya whip") (font . "-apple-Inconsolata-medium-normal-normal-*-16-*-*-*-m-0-iso10646-1") (fontsize . 0) (font-backend ns))))
 '(fill-column 100)
 '(find-file-existing-other-name nil)
 '(global-visual-line-mode nil)
 '(grep-find-template "find -L . <X> -type f <F> -exec grep <C> -nH -e <R> {} /dev/null \\;")
 '(grep-find-ignored-files (quote (".#*" "*.rbc" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.pfsl" "*.dfsl" "*.p64fsl" "*.d64fsl" "*.dx64fsl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo" "*.log")))
 '(javascript-indent-level 2)
 '(js-indent-level 2)
 '(ns-tool-bar-display-mode nil t)
 '(ns-tool-bar-size-mode nil t)
 '(rinari-rgrep-file-endings "*.*" t)
 '(show-paren-mode nil)
 '(standard-indent 2)
 '(tab-width 2)
 '(toolbar-menu-show--copy nil)
 '(toolbar-menu-show--customize t)
 '(toolbar-menu-show--cut nil)
 '(toolbar-menu-show--paste nil)
 '(transient-mark-mode t)
 '(vc-follow-symlinks nil)
 '(visual-line-mode nil t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(autoface-default ((t (:inherit default))))
 '(comint-mode-default ((t (:inherit autoface-default :background "#8b3a3a"))) t)
 '(completion-list-mode-default ((t (:inherit autoface-default))) t)
 '(dired-mode-default ((t (:inherit autoface-default :background "#3f3f3f"))) t)
 '(echo-area ((t (:stipple nil :strike-through nil :underline nil :slant normal :weight normal :height 150 :width normal :family "Inconsolata"))))
 '(emacs-lisp-mode-default ((t (:inherit autoface-default))) t)
 '(font-lock-constant-face ((t (:foreground "#ff4500"))))
 '(font-lock-string-face ((t (:foreground "#cdad00"))))
 '(help-mode-default ((t (:inherit autoface-default :background "gray4"))) t)
 '(hl-line ((t (:background "#212121"))))
 '(linum ((t (:background "gray" :foreground "#966"))))
 '(mumamo-background-chunk-submode ((((class color) (min-colors 88) (background dark)) (:background "gray6"))))
 '(ruby-mode-default ((t (:inherit autoface-default :background "gray4" :foreground "gainsboro"))) t)
 '(shell-mode-default ((t (:inherit comint-mode-default :background "dark slate gray" :foreground "papaya whip"))) t)
 '(sql-interactive-mode-default ((t (:inherit autoface-default :background "#9f5118"))) t))
