;;; package --- init-web.el

;;; Commentary:
;;; Stuff for web major mode
;;; Code:
(use-package web-mode
	:mode (("\\.jsx\\'" . web-mode)
				 ("\\.phtml\\'" . web-mode)
				 ("\\.tpl\\.php\\'" . web-mode)
				 ("\\.[agj]sp\\'" . web-mode)
				 ("\\.as[cp]x\\'" . web-mode)
				 ("\\.erb\\'" . web-mode)
				 ("\\.mustache\\'" . web-mode)
				 ("\\.djhtml\\'" . web-mode))
	:ensure t
	:config
	(add-hook 'after-init-hook #'global-flycheck-mode)
	(setq-default flycheck-disabled-checkers
								(append flycheck-disabled-checkers
												'(javascript-jshint)))
	(flycheck-add-mode 'javascript-eslint 'web-mode)
	(setq-default flycheck-temp-prefix ".flycheck")
	(setq-default flycheck-disabled-checkers
								(append flycheck-disabled-checkers
												'(json-jsonlist)))
	(defun my-web-mode-hook ()
		"Hooks for Web mode. Adjust indent"
		;;; http://web-mode.org/
		(setq web-mode-markup-indent-offset 2)
		(setq web-mode-css-indent-offset 2)
		(setq web-mode-code-indent-offset 2))
	(defadvice web-mode-highlight-part (around tweak-jsx activate)
		(if (equal web-mode-content-type "jsx")
				(let ((web-mode-enable-part-face nil))
					ad-do-it)
			ad-do-it))
	)

(provide 'init-web)
;;; init-web.el ends here
