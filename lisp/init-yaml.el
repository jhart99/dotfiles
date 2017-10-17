;;; package --- init YAML major mode

;;; Commentary:
;;; This loads the package needed for YAML major mode and sets some sane settings

;;; Code:
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
					'(lambda ()
						 (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
(provide 'init-yaml)
;;; init-yaml.el ends here
