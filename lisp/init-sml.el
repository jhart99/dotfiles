;;; package --- Smart mode line

;;; Commentary:
;;; Set up smart mode line

;;; Code:
(use-package smart-mode-line
  :ensure t)
(require 'smart-mode-line)
(setq sml/no-confirm-load-theme t)
(sml/setup)
(provide 'init-sml)
;;; init-sml.el ends here
