;;; Global key bindigns

;; How to Define Keyboard Shortcuts in Emacs
;; http://xahlee.org/emacs/keyboard_shortcuts.html

;; Window manipulation
(global-set-key [(control kp-6)] 'enlarge-window-horizontally)
(global-set-key [(control kp-4)] 'shrink-window-horizontally)
(global-set-key [(control kp-8)] 'enlarge-window)
(global-set-key [(control kp-2)] 'shrink-window)

;; Find stuff
(global-set-key [(f2)]              'ag-project-regexp)
(global-set-key [(meta f2)]         'ag-regexp)
(global-set-key [(shift f2)]        'occur)
(global-set-key [(control meta f2)] 'ag-dired-regexp)

;; Keyboard macros
(global-set-key [(shift f4)] 'kmacro-start-macro-or-insert-counter)
;; (global-set-key [(f4)]    'kmacro-end-or-call-macro)  ;; already defined

;; Refresh-like
(global-set-key [(f5)]         'revert-buffer)
(global-set-key [(control f5)] 'revbufs)

;; Query Replace
(global-set-key [(f6)]         'query-replace)
(global-set-key [(control f6)] 'query-replace-regexp)

;; Indenting and alignment
(global-set-key [(f8)]         'indent-region)
(global-set-key [(control f8)] 'align)
(global-set-key [(shift f8)]   'align-current)
(global-set-key [(meta f8)]    'align-regexp)

;; Replace dired's M-o
;;(add-hook 'dired-mode-hook (lambda () (define-key dired-mode-map (kbd "M-o") 'other-window))) ; was dired-omit-mode
;; Replace ibuffer's M-o
;;(add-hook 'ibuffer-mode-hook (lambda () (define-key ibuffer-mode-map (kbd "M-o") 'other-window))) ; was ibuffer-visit-buffer-1-window

;; ibuffer > list-buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Easier buffer killing
(global-unset-key (kbd "M-k"))
(global-set-key (kbd "M-K") 'kill-this-buffer)

;; Easier M-x invocation
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-x\C-m" 'execute-extended-command)

;; Faster word kill
(global-set-key "\C-c\C-c" 'backward-kill-word)

;; Run shell command on current buffer
(global-set-key "\M-'" 'execute-shell-command-on-buffer)

;; Improved navigation and editing (assumes misc.el)
;;(global-set-key (kbd "M-Z") 'zap-up-to-char)
;;(global-set-key (kbd "M-F") 'forward-to-word)
;;(global-set-key (kbd "M-B") 'backward-to-word)

;; flx-isearch fuzzy search
(global-set-key (kbd "C-M-s") #'flx-isearch-forward)
(global-set-key (kbd "C-M-r") #'flx-isearch-backward)

;; Goto Line
(global-set-key [remap goto-line] 'goto-line-with-feedback)

;; Helm bindings
(global-set-key (kbd "C-c C-d") 'helm-locate)

;; Help teach to unlearn the arrow keys
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))
