(add-to-list 'load-path "~/.emacs.d/vendor")
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(load "lenage/env")
(load "lenage/global")
(load "lenage/defuns")
(load "lenage/bindings")
;; (load "lenage/tabs")
(load "lenage/disabled")
(load "lenage/fonts")
(load "lenage/utf-8")
(load "lenage/scratch")
(load "lenage/diff")
(load "lenage/ido")
(load "lenage/dired")
(load "lenage/recentf")
(load "lenage/rectangle")
(load "lenage/org")
(load "lenage/zoom")
(load "lenage/flymake")
(load "lenage/mac")
(load "lenage/server-mode")
(load "lenage/private" 'noerror)
(load "lenage/iswitchb")
(load "lenage/lang")
(load "lenage/ruby-mode")
(load "lenage/rails")
(load "lenage/auto-complete")
(load "lenage/gist")
;; (load "lenage/emms")
;; (load "lenage/gnus")
(vendor 'revbufs       'revbufs)
