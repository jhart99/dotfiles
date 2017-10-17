;;; package --- solarized theme

;;; Commentary:
;; load solarized.  This sort of works, but for some reason command mode chokes on it

;;; Code:

(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized/")
(set-frame-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)
(provide 'init-solarized)
;;; init-solarized.el ends here
