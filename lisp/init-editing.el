;;; package --- General editing  Config

;;; Commentary:
;;; General setting outside of packages

;;; Code:

(progn
  (dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
    (when (fboundp mode) (funcall mode -1))))

;; no splash screen drop us to an empty buffer
;; (setq inhibit-startup-screen t
;;      initial-buffer-choice t)

;; simple y or n
(defalias 'yes-or-no-p 'y-or-n-p)

(setq-default
 indent-tabes-mode nil
 tab-width 2)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(add-hook 'write-file-hooks 'delete-trailing-whitespace)

(setq require-final-newline t)

(global-set-key [f1] 'shell)
(substitute-key-definition 'kill-buffer 'kill-buffer-and-window global-map)

(provide 'init-editing)
;;; init-editing.el ends here
