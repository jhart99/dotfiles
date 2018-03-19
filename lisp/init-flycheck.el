;;; package --- Load flycheck

;;; Commentary:
;;; Syntax checking via flycheck

;;; Code:
(use-package flycheck
	:ensure t
	:init
	(global-flycheck-mode t)
	:config
	(setq-default flycheck-emacs-lisp-load-path 'inherit)
    (flycheck-add-next-checker 'python-flake8 'python-pylint)
    )

(provide 'init-flycheck)
;;; init-flycheck.el ends here
