(helm-mode 1)
(set-face-attribute 'helm-selection nil :background "#001144")
(helm-autoresize-mode 1)
;;(setq helm-locate-fuzzy-match t)
(setq helm-idle-delay 0.1)
(setq helm-input-idle-delay 0.15)
(setq helm-locate-command "locate -d /home/mdawson/blt/app/196/patch/core/mylocatedb %s %s")

;; Note to generate a localdb used the following command
;; updatedb -l 0 -U . -o ./mylocatedb --prunepaths "`find /home/mdawson/blt/app/196/patch/core -regextype posix-extended -type d -iregex ".*/(target|tmp-cache|build)" -printf "%p "`" && locate -d ./mylocatedb search.cmp
