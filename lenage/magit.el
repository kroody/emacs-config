;;; It's Magit! An Emacs mode for Git.
;; Subtler highlightm

;; (require 'magit-svn)
;; (set-face-background 'magit-item-highlight "#121212")
;; (set-face-foreground 'magit-diff-context "#666666")
;; (set-face-foreground 'magit-diff-added "#00cc33")
;; (set-face-foreground 'magit-diff-removed "#ff0000")

(add-hook
 'magit-mode-hook
 (lambda ()
   (setq yas/dont-activate t)
   ))

(eval-after-load 'magit
  '(progn
     ;; (set-face-background 'magit-item-highlight "gray10")
     (set-face-background 'magit-item-highlight nil)
     (set-face-background 'highlight nil) ;; highlight is overriding other background colors for diff chunks
     (define-key magit-mode-map (kbd "M-3") 'split-window-horizontally) ; was magit-show-level-3
     (define-key magit-mode-map (kbd "M-2") 'split-window-vertically)   ; was magit-show-level-2
     (define-key magit-mode-map (kbd "M-1") 'delete-other-windows)      ; was magit-show-level-1
     (defun magit-pull ()
       (interactive)
       (magit-run-git-async "pull" "--rebase" "-v"))
     ))
