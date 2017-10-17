;;; package --- init-magit.el

;;; Commentary:

;;; Code:
(use-package magit
	:ensure t
	:config
	(global-set-key (kbd "C-x g") 'magit-status))
(use-package evil-magit
	:ensure t)

(provide 'init-magit)
;;; init-magit.el ends here
