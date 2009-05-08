(add-to-list 'load-path "~/.emacs.d")
(require 'textmate)
(textmate-mode)

;; Color theme
(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/color-theme-blue.el")
(color-theme-blue)

(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; turnoff toolbar
(tool-bar-mode 0)

;; setup erlang mode
(setq load-path (cons  "/opt/local/lib/erlang/lib/tools-2.6.2/emacs"
      load-path))
      (setq erlang-root-dir "/opt/local/lib/erlang")
      (setq exec-path (cons "/opt/local/lib/erlang/bin" exec-path))
      (require 'erlang-start)
(defvar inferior-erlang-prompt-timeout t)

(setq completion-ignored-extensions
    '(".o"
        ".pyc", ".beam"
    ))    

(setq org-link-abbrev-alist
      '(("bug" . "https://bugs.launchpad.net/bugs/")))

(custom-set-variables
 '(yaml-indent-offset 4))

(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

(setq auto-fill-mode 1)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(defun journal-entry()
   (interactive)
   (find-file "/Users/anand/org/journal.org")
   (insert-journal-today)
   (end-of-buffer)
   (insert-journal-entry-header))

(defun insert-journal-today ()
  (interactive "*")
  (end-of-buffer)
  (let ((today (format-time-string "* [%Y-%m-%d %a]" (current-time))))
    (cond 
     ((not (search-backward today nil t))
      (end-of-buffer)
      (insert today "\n")))))

(defun insert-journal-entry-header ()
    (interactive "*")
    (insert (format-time-string "** [%H:%M]" (current-time))))

