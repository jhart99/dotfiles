;;; package --- init-go.el

;;; Commentary:
;;; Code:
(use-package go-mode
	:ensure t
	:config
	(add-hook 'before-save-hook 'gofmt-before-save))
(use-package company-go
  :ensure t)
(provide 'init-go)
;;; init-go.el ends here
