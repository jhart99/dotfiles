;;; package --- load company-mode

;;; Commentary:
;;; load company-mode

;;; Code:
(use-package company
  :ensure t
  :diminish company-mode
  :init
  (setq company-idle-delay 0.2)
  (setq company-minimum-prefix-length 1)
  (setq company-show-number t)
  (setq company-tooltip-limit 20)
  (setq company-dabbrev-downcase nil)
  (setq company-dabbrev-ignore-case t)
  (setq company-dabbrev-code-ignore-case t)
  (setq company-dabbrev-code-everywhere t)
  (setq company-etags-ignore-case t)
  (setq company-global-modes
        '(not
           eshell-mode org-mode))
  :config
  (defadvice company-pseudo-tooltip-unless-just-one-frontend
             (around only-show-tooltip-when-invoked activate)
             (when (company-explicit-action-p)
               ad-do-it))
  (global-company-mode))
(require 'company)
(provide 'init-cm)
;;; init-cm.el ends here
