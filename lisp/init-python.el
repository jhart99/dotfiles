;;; package --- Python major mode

;;; Commentary:
;; Initialize python mode

;;; Code:
(use-package company-jedi
	:ensure t
    :config
    (defun my/python-mode-hook ()
      (add-to-list 'company-backends 'company-jedi))
    (add-hook 'python-mode-hook 'my/python-mode-hook))
(use-package pytest
             :ensure t)
(use-package yapfify
             :ensure t)
(use-package importmagic
             :ensure t
             :config
             (add-hook 'python-mode-hook 'importmagic-mode))
(provide 'init-python)
;;; init-python.el ends here
