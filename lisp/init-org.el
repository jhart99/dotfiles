;;; package --- init-org.el

;;; Commentary:
;;; Stuff for org mode
;;; Code:
(use-package org
	:ensure t
	:defer t
	:bind (("C-c l" . org-store-link)
				 ("C-c c" . org-capture)
				 ("C-c a" . org-agenda)
				 :map org-mode-map
				 )
	:mode ("\\.org$" . org-mode)
	:config
	(require 'org-id)
	)
(setq org-log-done 'time)
(provide 'init-org)
;;; init-org.el ends here
