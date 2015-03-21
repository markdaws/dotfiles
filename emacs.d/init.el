(setq custom-file "~/.emacs.d/personal/custom.el")
(load custom-file 'noerror)

(load "~/.emacs.d/personal/defuns")

(personal 'bindings)
(personal 'fonts)
;;(personal 'flx-ido) flx-ido
(personal 'global)
(personal 'mac)
(personal 'saveplace)
(personal 'shellmode)
(personal 'tabs)
(personal 'utf-8)
(personal 'whitespace)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
             ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))



(package 'js2-mode)
(package 'flx-ido)
(package 'flx-isearch)
(package 'projectile)
