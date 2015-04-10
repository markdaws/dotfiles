(fset 'p4edit
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("'p4 edit %s" 0 "%d")) arg)))
