;;; package --- init-js.el

;;; Commentary:
;;; Stuff for js major mode
;;; Code:
(use-package js2-mode
	:mode "\\.js\\'"
	:ensure t
	:config
	(add-hook 'js2-mode-hook #'js2-imenu-extras-mode))

(use-package js2-refactor
	:ensure t
	:config
	(add-hook 'js2-mode-hook #'js2-refactor-mode)
	(js2r-add-keybindings-with-prefix "C-c C-r")
	(define-key js2-mode-map (kbd "C-k") #'js2r-kill)
	(define-key js2-mode-map (kbd "M-.") nil)
	(add-hook 'js2-mode-hook (lambda ()
														 (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))))
(use-package xref-js2
	:ensure t
	:config )


(provide 'init-js)
;;; init-js.el ends here
