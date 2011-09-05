(load (expand-file-name "C:/Documents and Settings/rlatimore/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "C:/home/rlatimore/ccl/wx86cl")
(load "~/ess-5.13/ess/lisp/ess-site")
(setq inferior-R-program-name "C:/home/rlatimore/R/R-2.13.0/bin/i386/Rterm")

 (add-to-list 'load-path "C:/home/rlatimore/ntemacs24/site-lisp/sml-mode")
     (autoload 'sml-mode-startup "sml-mode-startup" "Startup file for SML." t)
     (autoload 'sml-mode "sml-mode" "Major mode for editing SML." t)
     (autoload 'run-sml "sml-proc" "Run an inferior SML process." t)
 (add-to-list 'auto-mode-alist '("\\.\\(sml\\|sig\\)\\'" . sml-mode))

(let ((default-directory "~/.emacs.d/"))
      (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
 (autoload 'csv-mode "csv-mode"
   "Major mode for editing comma-separated value files." t)
(require 'undo-tree)
(require 'ecb)
(require 'url)
(setq url-proxy-services '(("http" . "nw-proxy.corp.priceline.com:8080")))
(require 'el-get)

(defun color-theme-blueberry ()
  (interactive)
  (color-theme-install
   '(color-theme-blueberry
      ((background-color . "#101b28")
      (background-mode . light)
      (border-color . "#00001e")
      (cursor-color . "#0076bd")
      (foreground-color . "#ffffff")
      (mouse-color . "black"))
     (fringe ((t (:background "#00001e"))))
     (mode-line ((t (:foreground "#0293b1" :background "#303030"))))
     (region ((t (:background "#0d3844"))))
     (font-lock-builtin-face ((t (:foreground "#fffd70"))))
     (font-lock-comment-face ((t (:foreground "#156522"))))
     (font-lock-function-name-face ((t (:foreground "#00e0cf"))))
     (font-lock-keyword-face ((t (:foreground "#1a89ff"))))
     (font-lock-string-face ((t (:foreground "#ea34d6"))))
     (font-lock-type-face ((t (:foreground"#81ff05"))))
     (font-lock-variable-name-face ((t (:foreground "#ff722e"))))
     (minibuffer-prompt ((t (:foreground "#2990ff" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     )))
(provide 'color-theme-blueberry)
(require 'color-theme)
(color-theme-initialize)
(color-theme-blueberry)

;;twelf setup
(setq twelf-root "C:/home/rlatimore/twelf/")
(load (concat twelf-root "emacs/twelf-init.el"))


(require 'package)
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/") 
                          ; ("gnu" . "http://elpa.gnu.org/packages/")
			   ("Marmalade" . "http://marmalade-repo.org/packages/")))

;;;; ====  Configure `whitespace.el'  ====
   (require 'whitespace)
   
;;; add `gnuplot-mode' to the list `whitespace-modes'
  (setq whitespace-modes (cons 'gnuplot-mode 'whitespace-modes))

;;; Enable whitespace globally
;; To check (and possibly fix if `whitespace-auto-cleanup' is set) whitespace
;; problems automatically on new buffers, you can turn
;; `whitespace-global-mode' on.
  (setq whitespace-global-mode t)
  
;;; Check buffer with `whitespace' every time you open a file:
;; To enable that add `whitespace-write-file-hook' to the `find-file-hooks':
;; add this to check for whitespace, if a file is opened (the file had been found):
   (add-hook 'find-file-hooks 'whitespace-write-file-hook)

;;; Check buffer with `whitespace' before you save the file:
;; To check (and possibly fix if `whitespace-auto-cleanup' is set) whitespace
;; problems automatically but only when saving buffers, you can add the
;; function `whitespace-write-file-hook' to your `write-file-hooks'.
   (add-hook 'write-file-hooks 'whitespace-write-file-hook)

;;; Configure behaviour of `whitespace':
;; define which white spaces should be visuable
  (setq whitespace-style '(trailing newline tab-mark newline-mark))

;; Global variable to check `whitespace' at `end-of-line'
  (setq whitespace-check-ateol-whitespace t)
;; leave alone leading whitespace
  (setq whitespace-check-leading-whitespace nil)

[...]

;;;; ====  Configure Gnuplot-mode  ====
;; these lines enable the use of gnuplot mode
  (autoload 'gnuplot-mode "gnuplot" "gnuplot major mode" t)
  (autoload 'gnuplot-make-buffer "gnuplot" "open a buffer in gnuplot mode" t)

;; this line automatically causes all files with the .gp extension to
;; be loaded into gnuplot mode
  (setq auto-mode-alist
     (append
        (list
           '("\\.gp$" . gnuplot-mode)
           '("\\.plt$" . gnuplot-mode)
        )
      auto-mode-alist))

;; if you have the latest win32 version of gnuplot
(add-hook 'gnuplot-load-hook
                   '(lambda ()
                        (setq gnuplot-program
                              "C:/home/rlatimore/gp45-winbin/gnuplot/bin/pgnuplot.exe")
                        (setq gnuplot-gnuplot-buffer "plot.plt") ; name of a new gnuplot file
                        ; (setq show-trailing-whitespace t)
                        (setq whitespace-check-buffer-ateol t)
                    ))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sml-program-name "C:/cygwin/usr/share/smlnj/bin/sml"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
