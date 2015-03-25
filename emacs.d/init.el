(setq custom-file "~/.emacs.d/personal/custom.el")
(load custom-file 'noerror)

(load "~/.emacs.d/personal/defuns")

(when (not (display-graphic-p))
  (menu-bar-mode -1))

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

(require 'package)
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(setq package-enable-at-startup nil)
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))


(package 'helm)
(package 'js2-mode)
(package 'flx-ido)
(package 'flx-isearch)
(package 'projectile)
(package 'p4)

