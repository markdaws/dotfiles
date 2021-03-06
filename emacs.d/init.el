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
(personal 'macros)
(personal 'org)
(personal 'saveplace)
(personal 'shellmode)
(personal 'tabs)
(personal 'utf-8)
(personal 'whitespace)
(personal 'go-mode)

(require 'package)
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(setq package-enable-at-startup nil)
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))

(package 'go-mode)
(package 'helm)
(package 'js2-mode)
(package 'flx-ido)
(package 'flx-isearch)
(package 'web-mode)
(package 'json-mode)
(package 'less-css-mode)

(add-to-list 'load-path (concat (getenv "GOPATH")  "/src/github.com/golang/lint/misc/emacs"))
(require 'golint)

;;(package 'projectile)
;;(package 'p4)
(package 'circe)
;;(package 'solarized-theme)
(package 'zenburn-theme)
;;(package 'material-theme)

;;(load-theme 'solarized-dark t)
(load-theme 'zenburn t)
;;(load-theme 'material t)
