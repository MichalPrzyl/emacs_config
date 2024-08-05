
PATH: ~/.doom.d/config.el


;; MP CHANGES
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; (setq display-line-numbers-type t)
(setq display-line-numbers-type 'relative)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; czcionka
(set-frame-font "Fira Code-12" nil t)

(setq select-enable-clipboard t)

(defun evil-yank-to-clipboard ()
  "Yank text to system clipboard."
  (interactive)
  (if (use-region-p)
      (progn
        (call-process-region (region-beginning) (region-end) "clip.exe")
        (message "Yanked region to clipboard."))
    (message "No region selected.")))

(evil-ex-define-cmd "yank" 'evil-yank-to-clipboard)
