;;; package --- init.el

;;; Commentary:
;;; global init script for Emacs.

;;; Code:

;; general global variables and initialization
;; Turn off menubars
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; init packages
(package-initialize)
;; base load path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; start a server or use a server rather than reloading constantly
(when (require 'server nil t)
  (unless (server-running-p)
    (server-start)))

;; Deal with the backupfiles
(setq backup-directory-alist '(("." . "~/.emacs.d/saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
			kept-new-versions 6
			kept-old-versions 2
			version-control t)
;; utf-8 mode please
(set-default-coding-systems 'utf-8)
;; begin initializing packages.  Use-package must be the first one since the others depend on it
(require 'init-use-package)
;; (require 'init-solarized)
(require 'init-zenburn)
(require 'init-editing)
(require 'init-evil)
(require 'init-helm)
(require 'init-sml)
(require 'init-docker)
(require 'init-kubernetes)
(require 'init-python)
(require 'init-flycheck)
(require 'init-yaml)
(require 'init-go)
(require 'init-json)
(require 'init-ess)
(require 'init-markdown)
(require 'init-magit)
(require 'init-systemd)
(require 'init-terraform)
(xterm-mouse-mode)
(require 'init-cm)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
	 (quote
		(systemd zenburn-theme yapfify xpm use-package smart-mode-line pytest py-yapf markdown-mode kubernetes importmagic helm hc-zenburn-theme flycheck evil-magit ess dockerfile-mode company-jedi company-go))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
