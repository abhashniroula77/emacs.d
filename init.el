Content-Type: text/enriched
Text-Width: 70

;; <x-color><param>chocolate1</param>Turn off mouse interface early in startup to avoid momentary display
</x-color>(<x-color><param>Cyan1</param>if</x-color> (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(<x-color><param>Cyan1</param>if</x-color> (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(<x-color><param>Cyan1</param>if</x-color> (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))


;; <x-color><param>chocolate1</param>Set path to dependencies
</x-color>(setq user-emacs-directory <x-color><param>LightSalmon</param>"~/.emacs.d/"</x-color>)
(setq site-lisp-dir
      (expand-file-name <x-color><param>LightSalmon</param>"site-lisp"</x-color> user-emacs-directory))

(setq settings-dir
      (expand-file-name <x-color><param>LightSalmon</param>"settings"</x-color> user-emacs-directory))


;; <x-color><param>chocolate1</param>Empty scratch message!

</x-color>(setq initial-scratch-message <x-color><param>LightSalmon</param>""</x-color>)


;;<x-color><param>chocolate1</param>

</x-color>(setq inhibit-startup-echo-area-message <x-color><param>LightSalmon</param>"bibek"</x-color>)


;; <x-color><param>chocolate1</param>No splash screen please ... jeez
</x-color>(setq inhibit-startup-message t)
(add-to-list 'load-path (concat user-emacs-directory <x-color><param>LightSalmon</param>"settings"</x-color>))

(add-to-list 'load-path site-lisp-dir)

;;<x-color><param>chocolate1</param>(load-file "~/emacs-for-python/epy-init.el")

</x-color>


;;<x-color><param>chocolate1</param>keybindings
</x-color>(global-set-key (kbd <x-color><param>LightSalmon</param>"C-;"</x-color>) 'other-window)

;;<x-color><param>chocolate1</param>hightlight current line.

</x-color>

;; <x-color><param>chocolate1</param>Make shell more convenient, and suspend-frame less
</x-color>(global-set-key (kbd <x-color><param>LightSalmon</param>"C-z"</x-color>) 'shell)
(global-set-key (kbd <x-color><param>LightSalmon</param>"C-x M-z"</x-color>) 'suspend-frame)


;;<x-color><param>chocolate1</param>get rid of backspace

</x-color>(global-set-key (kbd <x-color><param>LightSalmon</param>"C-h"</x-color>) 'backward-delete-char-untabify)

(global-set-key (kbd <x-color><param>LightSalmon</param>"C-w"</x-color>) 'backward-kill-word)

(global-set-key (kbd <x-color><param>LightSalmon</param>"C-x C-k"</x-color>) 'kill-region)


;;<x-color><param>chocolate1</param>set binary name for scheme implementation

</x-color>(setq scheme-program-name <x-color><param>LightSalmon</param>"scheme"</x-color>)


(add-to-list 'default-frame-alist '(height . 17))
(add-to-list 'default-frame-alist '(width . 78))



;; <x-color><param>chocolate1</param>Keep emacs Custom-settings in separate file       ###Yet to go.
</x-color>(setq custom-file (expand-file-name <x-color><param>LightSalmon</param>"custom.el"</x-color> user-emacs-directory))
(load custom-file)


;; <x-color><param>chocolate1</param>Set up appearance early
</x-color>(<x-color><param>Cyan1</param>require</x-color> '<x-color><param>Aquamarine</param>appearance</x-color>)

;<x-color><param>chocolate1</param>font size
</x-color>

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(setq ido-create-new-buffer 'always)

(setq ido-seperator <x-color><param>LightSalmon</param>"\n"</x-color>)


(<x-color><param>Cyan1</param>when</x-color> (>= emacs-major-version 24)
  (<x-color><param>Cyan1</param>require</x-color> '<x-color><param>Aquamarine</param>package</x-color>)
  (add-to-list
   'package-archives
   '(<x-color><param>LightSalmon</param>"melpa"</x-color> . <x-color><param>LightSalmon</param>"http://melpa.org/packages/"</x-color>)
   t)
  (package-initialize))
(custom-set-variables
)




(fset 'yes-or-no-p 'y-or-n-p) ;<x-color><param>chocolate1</param>to replace having to type 'yes' or 'no' and instead type just 'y' or 'n' in prompts.

</x-color>

;;; <x-color><param>chocolate1</param>Shut up compile saves
</x-color>(setq compilation-ask-about-save nil)
;;; <x-color><param>chocolate1</param>Don't save *anything*
</x-color>(setq compilation-save-buffers-predicate '(<x-color><param>Cyan1</param>lambda</x-color> () nil))


;; <x-color><param>chocolate1</param>;edit server require (chrome emacs)

</x-color>(<x-color><param>Cyan1</param>require</x-color> '<x-color><param>Aquamarine</param>edit-server</x-color>)
(edit-server-start)


;; <x-color><param>chocolate1</param>Emacs server
</x-color>(<x-color><param>Cyan1</param>require</x-color> '<x-color><param>Aquamarine</param>server</x-color>)
(<x-color><param>Cyan1</param>unless</x-color> (server-running-p)
  (server-start))


;; <x-color><param>chocolate1</param>font height

</x-color>(set-face-attribute 'default nil <x-color><param>LightSteelBlue</param>:height</x-color> 120)



;<x-color><param>chocolate1</param>for auctex
</x-color>(setq TeX-auto-save t)  
(setq TeX-parse-self t) 

;<x-color><param>chocolate1</param>number lines
</x-color>;<x-color><param>chocolate1</param>(global-linum-mode 1)

</x-color> ;<x-color><param>chocolate1</param>scrollbar mode off
</x-color>(scroll-bar-mode -1)

(global-set-key [f5] 'call-last-kbd-macro) ; <x-color><param>chocolate1</param>binding f5 to call-last macro

</x-color>;<x-color><param>chocolate1</param>invoke M-x with  C-x C-m or C-c C-m
</x-color>(global-set-key <x-color><param>LightSalmon</param>"\C-x\C-m"</x-color> 'execute-extended-command)
(global-set-key <x-color><param>LightSalmon</param>"\C-c\C-m"</x-color> 'execute-extended-command)

;<x-color><param>chocolate1</param>for auctex
</x-color>(setq TeX-auto-save t)
(setq TeX-parse-self t)

;<x-color><param>chocolate1</param>for time-stamp refresh on save
</x-color>(add-hook 'before-save-hook 'time-stamp)


(global-set-key (kbd <x-color><param>LightSalmon</param>"<<f10>"</x-color>) 'toggle-frame-fullscreen)



;; <x-color><param>chocolate1</param>Turn on the menu bar for exploring new modes
</x-color>(global-set-key (kbd <x-color><param>LightSalmon</param>"C-<<f10>"</x-color>) 'menu-bar-mode)


;; <x-color><param>chocolate1</param>Transpose stuff with M-t
</x-color>(global-unset-key (kbd <x-color><param>LightSalmon</param>"M-t"</x-color>)) ;; <x-color><param>chocolate1</param>which used to be transpose-words
</x-color>(global-set-key (kbd <x-color><param>LightSalmon</param>"M-t l"</x-color>) 'transpose-lines)
(global-set-key (kbd <x-color><param>LightSalmon</param>"M-t w"</x-color>) 'transpose-words)
(global-set-key (kbd <x-color><param>LightSalmon</param>"M-t s"</x-color>) 'transpose-sexps)
(global-set-key (kbd <x-color><param>LightSalmon</param>"M-t p"</x-color>) 'transpose-params)



;;<x-color><param>chocolate1</param>kill shell buffer on C-d on empty line
</x-color>(<x-color><param>Cyan1</param>defun</x-color> <x-color><param>LightSkyBlue</param>comint-delchar-or-eof-or-kill-buffer</x-color> (arg)
  (interactive <x-color><param>LightSalmon</param>"p"</x-color>)
  (<x-color><param>Cyan1</param>if</x-color> (null (get-buffer-process (current-buffer)))
      (kill-buffer)
    (comint-delchar-or-maybe-eof arg)))

(add-hook 'shell-mode-hook
          (<x-color><param>Cyan1</param>lambda</x-color> ()
            (define-key shell-mode-map
              (kbd <x-color><param>LightSalmon</param>"C-d"</x-color>) 'comint-delchar-or-eof-or-kill-buffer)))
;;<x-color><param>chocolate1</param>blink cursor and more
</x-color>(<x-color><param>Cyan1</param>when</x-color> window-system
  (setq frame-title-format '(buffer-file-name <x-color><param>LightSalmon</param>"%f"</x-color> (<x-color><param>LightSalmon</param>"%b"</x-color>)))
  (tooltip-mode -1)
  (blink-cursor-mode -1))

;; <x-color><param>chocolate1</param>Highlight current line
</x-color>(global-hl-line-mode 1)


;; <x-color><param>chocolate1</param>Write backup files to own directory
</x-color>(setq backup-directory-alist
      `((<x-color><param>LightSalmon</param>"."</x-color> . ,(expand-file-name
                 (concat user-emacs-directory <x-color><param>LightSalmon</param>"backups"</x-color>)))))


;; <x-color><param>chocolate1</param>Setup extensions
</x-color>(eval-after-load 'ido '(<x-color><param>Cyan1</param>require</x-color> '<x-color><param>Aquamarine</param>setup-ido</x-color>))

(eval-after-load 'dired '(<x-color><param>Cyan1</param>require</x-color> '<x-color><param>Aquamarine</param>setup-dired</x-color>))


;; <x-color><param>chocolate1</param>I want an easy command for opening new shells:
</x-color>(<x-color><param>Cyan1</param>defun</x-color> <x-color><param>LightSkyBlue</param>new-shell</x-color> (name)
  "Opens a new shell buffer with the given name in
asterisks (*name*) in the current directory and changes the
prompt to 'name>'."
  (interactive <x-color><param>LightSalmon</param>"sName: "</x-color>)
  (pop-to-buffer (concat <x-color><param>LightSalmon</param>"*"</x-color> name <x-color><param>LightSalmon</param>"*"</x-color>))
  (<x-color><param>Cyan1</param>unless</x-color> (eq major-mode 'shell-mode)
    (shell (current-buffer))
    (sleep-for 0 200)
    (delete-region (point-min) (point-max))
    (comint-simple-send (get-buffer-process (current-buffer))
                        (concat <x-color><param>LightSalmon</param>"export PS1=\"\033[33m"</x-color> name <x-color><param>LightSalmon</param>"\033[0m:\033[35m\\W\033[0m>\""</x-color>))))


;;<x-color><param>chocolate1</param>require elpy

</x-color>(elpy-enable)


;;<x-color><param>chocolate1</param>

</x-color>(define-key yas-minor-mode-map (kbd <x-color><param>LightSalmon</param>"C-c k"</x-color>) 'yas-expand)


(setq save-place-file <x-color><param>LightSalmon</param>"~/.emacs.d/saveplace"</x-color>) ;; <x-color><param>chocolate1</param>keep my ~/ clean
</x-color>(setq-default save-place t)                   ;; <x-color><param>chocolate1</param>activate it for all buffers
</x-color>(<x-color><param>Cyan1</param>require</x-color> '<x-color><param>Aquamarine</param>saveplace</x-color>)                          ;; <x-color><param>chocolate1</param>get the package
</x-color>


;; <x-color><param>chocolate1</param>scheme

</x-color>(<x-color><param>Cyan1</param>require</x-color> '<x-color><param>Aquamarine</param>xscheme</x-color>)



;;<x-color><param>chocolate1</param>additions to buffer-switch (should make a different file perhaps!

</x-color>(<x-color><param>Cyan1</param>defvar</x-color> <x-color><param>LightGoldenrod</param>xah-switch-buffer-ignore-dired</x-color> t "If t, ignore dired buffer when calling `<x-color><param>Aquamarine</param>xah-next-user-buffer</x-color>' or `<x-color><param>Aquamarine</param>xah-previous-user-buffer</x-color>'")
(setq xah-switch-buffer-ignore-dired t)

(<x-color><param>#56b4e9</param>defun</x-color> <x-color><param>#d55e00</param>xah-next-user-buffer</x-color> ()
  <x-color><param>moccasin</param>"Switch to the next user buffer.
 “user buffer” is a buffer whose name does not start with “*”.
If `<x-color><param>#d55e00</param>xah-switch-buffer-ignore-dired</x-color>' is true, also skip directory buffer.
2015-01-05 URL `<x-color><param>#d55e00</param>http://ergoemacs.org/emacs/elisp_next_prev_user_buffer.html</x-color>'"</x-color>
  (interactive)
  (next-buffer)
  (<x-color><param>#56b4e9</param>let</x-color> ((i 0))
    (<x-color><param>#56b4e9</param>while</x-color> (<< i 20)
      (<x-color><param>#56b4e9</param>if</x-color> (or
           (string-equal <x-color><param>#848ea9</param>"*"</x-color> (substring (buffer-name) 0 1))
           (<x-color><param>#56b4e9</param>if</x-color> (string-equal major-mode <x-color><param>#848ea9</param>"dired-mode"</x-color>)
               xah-switch-buffer-ignore-dired
             nil
             ))
          (<x-color><param>#56b4e9</param>progn</x-color> (next-buffer)
                 (setq i (1+ i)))
        (<x-color><param>#56b4e9</param>progn</x-color> (setq i 100))))))

(<x-color><param>#56b4e9</param>defun</x-color> <x-color><param>#d55e00</param>xah-previous-user-buffer</x-color> ()
  <x-color><param>moccasin</param>"Switch to the previous user buffer.
 “user buffer” is a buffer whose name does not start with “*”.
If `<x-color><param>#d55e00</param>xah-switch-buffer-ignore-dired</x-color>' is true, also skip directory buffer.
2015-01-05 URL `<x-color><param>#d55e00</param>http://ergoemacs.org/emacs/elisp_next_prev_user_buffer.html</x-color>'"</x-color>
  (interactive)
  (previous-buffer)
  (<x-color><param>#56b4e9</param>let</x-color> ((i 0))
    (<x-color><param>#56b4e9</param>while</x-color> (<< i 20)
      (<x-color><param>#56b4e9</param>if</x-color> (or
           (string-equal <x-color><param>#848ea9</param>"*"</x-color> (substring (buffer-name) 0 1))
           (<x-color><param>#56b4e9</param>if</x-color> (string-equal major-mode <x-color><param>#848ea9</param>"dired-mode"</x-color>)
               xah-switch-buffer-ignore-dired
             nil
             ))
          (<x-color><param>Cyan1</param>progn</x-color> (previous-buffer)
                 (setq i (1+ i)))
        (<x-color><param>Cyan1</param>progn</x-color> (setq i 100))))))

(<x-color><param>Cyan1</param>defun</x-color> <x-color><param>LightSkyBlue</param>xah-next-emacs-buffer</x-color> ()
  "Switch to the next emacs buffer.
 (buffer name that starts with “*”)"
  (interactive)
  (next-buffer)
  (<x-color><param>Cyan1</param>let</x-color> ((i 0))
    (<x-color><param>Cyan1</param>while</x-color> (and (not (string-equal <x-color><param>LightSalmon</param>"*"</x-color> (substring (buffer-name) 0 1))) (<< i 20))
      (setq i (1+ i)) (next-buffer))))

(<x-color><param>Cyan1</param>defun</x-color> <x-color><param>LightSkyBlue</param>xah-previous-emacs-buffer</x-color> ()
  "Switch to the previous emacs buffer.
 (buffer name that starts with “*”)"
  (interactive)
  (previous-buffer)
  (<x-color><param>Cyan1</param>let</x-color> ((i 0))
    (<x-color><param>Cyan1</param>while</x-color> (and (not (string-equal <x-color><param>LightSalmon</param>"*"</x-color> (substring (buffer-name) 0 1))) (<< i 20))
      (setq i (1+ i)) (previous-buffer))))


(global-set-key (kbd <x-color><param>LightSalmon</param>"<<f11>"</x-color>) 'xah-previous-user-buffer)
(global-set-key (kbd <x-color><param>LightSalmon</param>"<<f12>"</x-color>) 'xah-next-user-buffer)

(global-set-key (kbd <x-color><param>LightSalmon</param>"<<S-f11>"</x-color>) 'xah-previous-emacs-buffer)
(global-set-key (kbd <x-color><param>LightSalmon</param>"<<S-f12>"</x-color>) 'xah-next-emacs-buffer)

(global-set-key (kbd <x-color><param>LightSalmon</param>"C-'"</x-color>) (fset 'comment
				   (<x-color><param>Cyan1</param>lambda</x-color> (<x-color><param>PaleGreen</param>&optional</x-color> arg) "Keyboard macro." (interactive <x-color><param>LightSalmon</param>"p"</x-color>) (kmacro-exec-ring-item (quote ([1 67108896 5 134217848 99 111 109 109 101 110 116 45 114 101 tab return] 0 <x-color><param>LightSalmon</param>"%d"</x-color>)) arg))))

(global-set-key (kbd <x-color><param>LightSalmon</param>"C-\""</x-color>) 'uncomment-region)


;; <x-color><param>chocolate1</param>ido-buffer

</x-color>(global-set-key (kbd <x-color><param>LightSalmon</param>"C-x C-b"</x-color>) 'ido-switch-buffer)

(global-set-key (kbd <x-color><param>LightSalmon</param>"C-x b"</x-color>) 'ibuffer)


;;<x-color><param>chocolate1</param>Frame-size to small and position
</x-color>;;<x-color><param>chocolate1</param>(when window-system (set-frame-size (selected-frame) 60 15))

</x-color>;;<x-color><param>chocolate1</param>(when window-system (set-frame-position (selected-frame) 0 447))

</x-color>


(load <x-color><param>LightSalmon</param>"preview-latex.el"</x-color> nil t t)
