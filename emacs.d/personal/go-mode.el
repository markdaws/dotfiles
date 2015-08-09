(setq exec-path (cons "/usr/local/go/bin" exec-path))
(add-to-list 'exec-path "/User/mark/code/go/bin")
(add-hook 'before-save-hook 'gofmt-before-save)
