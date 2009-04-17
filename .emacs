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

