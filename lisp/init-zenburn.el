;;; package --- zenburn theme

;;; Commentary:
;; load zenburn

;;; Code:
(use-package zenburn-theme
	:ensure t
	:init
  (set-frame-parameter nil 'background-mode 'dark)
	:config
	(load-theme 'zenburn t))
(provide 'init-zenburn)
;;; init-zenburn.el ends here
