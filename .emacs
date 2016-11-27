;;设置你的全名和邮件，在发邮件时可以用到
(setq user-full-name "Radiohead")
(setq user-mail-address "kjin1983@gmail.com")
;;设置你的书签文件，默认是~/.emacs.bmk，我喜欢把有关emacs的文件尽量放在一个文件夹，所以就修改了。
(setq bookmark-default-file "~/.emacs.d/.emacs.bmk")
;;load-path就同bash中的$PATH相似，emacs所需要的Elisp包都得在load-path里的文件夹中，~/.emacs.d/elisp是我自己添加的Elisp包
(setq load-path (cons "~/.emacs.d/elisp" load-path))
;;设置info的路径，也可通过Shell的全局变量$INFOPATH设置
(add-to-list 'Info-default-directory-list "~/local/info/")
;;设置gnus启动的文件。默认是为~/.gnus.el
(setq gnus-init-file "~/.emacs.d/elisp/fxq-gnus.el")
;;由于我的配置文件很长，所以按照分类分别放在不同的文件里，方便管理

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;kjin add by emacs automaitcally by click menu items
(put 'erase-buffer 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (misterioso)))
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(global-ede-mode t)
 '(org-agenda-files
   (quote
	("~/Dropbox/emacs_docs/tutorial_mine/" "~/Dropbox/emacs_docs/")))
 '(package-selected-packages (quote (elpy ecb)))
 '(semantic-default-submodes
   (quote
	(global-semantic-decoration-mode global-semantic-idle-completions-mode global-semantic-idle-scheduler-mode global-semanticdb-minor-mode global-semantic-idle-summary-mode global-semantic-mru-bookmark-mode)))
 '(semantic-idle-scheduler-idle-time 3)
 '(tabbar-separator (quote (1.5)))
 '(truncate-partial-width-windows nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;kjin for package
(require 'package)
(add-to-list 'package-archives'
  ("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives' 
  ("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives'
  ("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "jk-basic-config")
(load "jk-language")
(load "jk-calendar")
(load "fxq-folding")
;;(load "jk-ido")
;;(load "jk-dictionary")
(load "fxq-function")
;;(load "fxq-mew")
(load "fxq-w3m")
;;(load "fxq-erc")
(load "jk-dired")
(load "jk-mode")
(load "jk-key-bindings")
(load "fxq-tnsdl")
;; (load "fxq-robot-mode")
(load "fxq-python-mode")
;;(load "fxq-ipython-mode")
(load "fxq-psvn");;SVN(SubVersion) plugin
(load "fxq-plm");;PL/M highlight
(load "color-theme")
;;(load "simple-call-tree")
;;(load "webkit")
;;(require 'webkit)
;; ;;Setting for gnuserv
;; (require 'gnuserv)
;; (gnuserv-start)
;; ;; 在当前frame打开
;; (setq gnuserv-frame (selected-frame))
;; ;; 打开后让emacs跳到前面来
;; (setenv "GNUSERV_SHOW_EMACS" "1")

(require 'redo)
(tool-bar-add-item "stock_redo"
                   'redo
                   'redo
                   :help "Redo(control f3)")
(require 'find-recursive)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; psvn.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; combined the SVN(SubVersion) in emacs
(require 'psvn)

;;(load "maxima")
;;(setq auto-mode-alist (cons '("\\.max" . maxima-mode) auto-mode-alist))
;(setq load-path (cons "D:\Program Files\Maxima-5.12.0\share\maxima\5.12.0\emacs" load-path ))
;;(autoload 'maxima "maxima" "Running Maxima interactively" t)
;;(autoload 'maxima-mode "maxima" "Maxima editing mode" t)

;;add line number for display
;;(require 'wb-line-number) --kjin do not need this, as in jk-basic-config.el already set (global-linum-mode)

;;Add tramp plink method by Ferry on 20120412
;; (require 'tramp)
;; (setq tramp-default-method "plink")
;; (setq tramp-auto-save-directory "~/.emacs.tmp")
;; (let ((my-tramp-methods nil)  
;;       (my-tramp-ssh-method   
;;        '("ssh"   
;;          (tramp-login-program "ssh")   
;;          (tramp-login-args (("%h")   
;;                             ("-l" "%u")  
;;                             ("-p" "%p")   
;;                             ("-e" "none")   
;;                             ("-A")))  
;;          (tramp-remote-sh "C:/APPS/cygwin/bin")   
;;          (tramp-copy-program nil)   
;;          (tramp-copy-args nil)  
;;          (tramp-copy-keep-date nil)  
;;          (tramp-password-end-of-line nil)   
;;          (tramp-gw-args (("-o" "GlobalKnownHostsFile=/dev/null")   
;;                          ("-o" "UserKnownHostsFile=/dev/null")  
;;                          ("-o" "StrictHostKeyChecking=no")))   
;;          (tramp-default-port 22))))  
;;   (setq tramp-methods (dolist (elt tramp-methods my-tramp-methods)  
;;     (if (string= (car elt) "ssh")  
;;         (setq my-tramp-methods (cons my-tramp-ssh-method my-tramp-methods))  
;;       (setq my-tramp-methods (cons elt my-tramp-methods))))))  

;; add tab mode by kjin-F on 20120413
(require 'tabbar)  
(tabbar-mode 1)  	
(define-prefix-command 'lwindow-map)
;;kjin add for tabbar color, this needed if customize-theme choosed!
(setq tabbar-buffer-list-function
    (lambda ()
        (remove-if
          (lambda(buffer)
             (find (aref (buffer-name buffer) 0) " *"))
          (buffer-list))))
(setq tabbar-buffer-groups-function
      (lambda()(list "All")))
(set-face-attribute 'tabbar-button nil)

;;set tabbar's backgroud color
(set-face-attribute 'tabbar-default nil
                    :background "gray"
                    :foreground "gray30")
(set-face-attribute 'tabbar-selected nil
                    :inherit 'tabbar-default
                    :background "green"
                    :box '(:line-width 3 :color "DarkGoldenrod") )
(set-face-attribute 'tabbar-unselected nil
                    :inherit 'tabbar-default
                    :box '(:line-width 3 :color "gray"))
;; USEFUL: set tabbar's separator gap


;; added by Ferry on 07082012 for Aspell function
;; (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
;; (setq ispell-program-name "aspell")
;; (setq ispell-personal-dictionary "D:/emacs/.emacs.d/ispell.el")
;; (require 'ispell)

;; added by Ferry on 30072013 for ignoring different directory and file in special mode
;; (require 'ignoramus)
;; (ignoramus-setup)

;; added by Ferry on 15112013 to use whitespace
(require 'whitespace)  ;; enable by M-x whitespace-mode


;;(color-theme-select)

;;这个东西必须放在最后
;;desktop.el是一个可以保存你上次emacs关闭时的状态，下一次启动时恢复为上次关闭的状态。就和vmware的suspend一样。
;; (load "desktop") 
;; (desktop-save-mode) 
;; (desktop-read)

                                                                                             

(load "highlight-symbol")
(require 'highlight-symbol)
(add-hook 'text-mode-hook 'highlight-symbol-mode)
(add-hook 'c-mode-hook 'highlight-symbol-mode)
(add-hook 'c++-mode-hook 'highlight-symbol-mode)
(add-hook 'tnsdl-mode-hook 'highlight-symbol-mode)
(add-hook 'java-mode-hook 'highlight-symbol-mode)
(add-hook 'perl-mode-hook 'highlight-symbol-mode)
(add-hook 'php-mode-hook 'highlight-symbol-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-symbol-mode)
(load "highlight-parentheses")
(require 'highlight-parentheses)
(add-hook 'c-mode-hook 'highlight-parentheses-mode)
(add-hook 'c++-mode-hook 'highlight-parentheses-mode)
(add-hook 'tnsdl-mode-hook 'highlight-parentheses-mode)
(add-hook 'java-mode-hook 'highlight-parentheses-mode)
(add-hook 'perl-mode-hook 'highlight-parentheses-mode)
(add-hook 'php-mode-hook 'highlight-parentheses-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-parentheses-mode)


;;Setting for ibuffer
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)  


;;Setting for wb-line-number
;;(require 'wb-line-number)
;;(setq truncate-partial-width-windows nil) ; use continuous line
;;(set-scroll-bar-mode nil)                 ; no scroll bar, even in x-window system
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Setting for code-reading
;;(require 'xcscope) ;;加载xcscope
;; (add-hook 'plm-mode-common-hook '(lambda() (require 'xcscope)))
;; (add-hook 'tnsdl-mode-common-hook '(lambda() (require 'xcscope)))

;;---------------------------------------------------
;;cedet 安装 http://blog.163.com/vic_kk/blog/static/494705242010726297405/
(require 'cedet)
;; (global-ede-mode t) ;; project 
;;;;  Helper tools.
(semantic-mode)
;; smart complitions
(require 'semantic/ia)
(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
;;;; TAGS Menu
(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)

;;;; Semantic DataBase存储位置
(setq semanticdb-default-save-directory
      (expand-file-name "~/.emacs.d/semanticdb"))

;; 使用 gnu global 的TAGS。
(require 'semantic/db-global)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)


;;;; Include settings
(require 'semantic/bovine/gcc)
(require 'semantic/bovine/c)

(defconst cedet-user-include-dirs
  (list ".." "../include" "../inc" "../common" "../public" "."
        "../.." "../../include" "../../inc" "../../common" "../../public"))
(setq cedet-sys-include-dirs (list
                              "/usr/include"
                              "/usr/include/bits"
                              "/usr/include/glib-2.0"
                              "/usr/include/gnu"
                              "/usr/include/gtk-2.0"
                              "/usr/include/gtk-2.0/gdk-pixbuf"
                              "/usr/include/gtk-2.0/gtk"
                              "/usr/local/include"
                              "/usr/local/include"))

(let ((include-dirs cedet-user-include-dirs))
  (setq include-dirs (append include-dirs cedet-sys-include-dirs))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))
(setq semantic-c-dependency-system-include-path "/usr/include/")


;;(ede-cpp-root-project "Kernel"
;;                :name "Kernel Project"
;;                :file "~/linux-stable/Makefile"
;;                :include-path '("/"
;;                                "/include"
;;                               )
;;                :system-include-path '("/usr/include")    )


;;(ede-cpp-root-project "Kernel"
;;                :name "Kernel Project"
;;                :file "~/Dropbox/personal/sourcecode/cscope.files"
;;                :include-path '("/"
;;                                "/include"
;;                               )
;;                :system-include-path '("/usr/include")    )

;Added by Ferry on 08/07/2012 for omitting the warning in Emacs 24.1.1
;; (setq byte-compile-warnings nil)
;; (add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo)))
;; (load-file "~/site-lisp/cedet/common/cedet.el")
;; (load-file "~/site-lisp/cedet/contrib/cedet-contrib.el")
;; (load-file "~/site-lisp/cedet/ede/ede.el")
;; (load-file "~/site-lisp/cedet/cogre/cogre.el")
;; (load "speedbar")
;; (load-file "~/site-lisp/cedet/eieio/eieio.el")
;; (semantic-load-enable-code-helpers)
;; (autoload 'speedbar-frame-mode "speedbar" "Popup a speedbar frame" t)
;; (autoload 'speedbar-get-focus "speedbar" "Jump to speedbar frame" t)
;; (define-key-after (lookup-key global-map [menu-bar tools])
;;   [speedbar]
;;   '("Speedbar" .
;; 	speedbar-frame-mode)
;;   [calendar]) 
;----------------------------------------------------------
;;ecb
;Added by Ferry on 08/07/2012 for omitting the warning in Emacs 24.1.1
;; (setq stack-trace-on-error nil)

;;(add-to-list 'load-path "~/.emacs.d/elisp/ecb/")
;; (load-file "~/site-lisp/ecb/ecb.el")
;;(require 'ecb)
;;(require 'ecb-autoloads)
;;(setq ecb-auto-activate nil
;;      ecb-tip-of-the-day nil)

;;(global-set-key [M-left] 'windmove-left)
;;(global-set-key [M-right] 'windmove-right)
;;(global-set-key [M-up] 'windmove-up)
;;(global-set-key [M-down] 'windmove-down)

;;(defun my-ecb-active-or-deactive ()
;;    (interactive)
;;    (if ecb-minor-mode
;;      (ecb-deactivate)
;;      (ecb-activate)))

;;(global-set-key (kbd "<C-f7>") 'my-ecb-active-or-deactive)

;;(require 'ecb-autoloads)
;; (setq ;;ecb-auto-activate t
;;           ecb-tip-of-the-day nil
;;           ecb-tree-indent 4
;;           ecb-windows-height 0.5
;;           ecb-windows-width 0.2
;;           ecb-auto-compatibility-check nil
;;           ecb-version-check nil
;;           inhibit-startup-message t)
;; ;--------------------------------------------
;; (custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;; '(column-number-mode t)
;; '(display-time-mode t)
;; '(ecb-gzip-setup (quote cons))
;; '(ecb-options-version "2.40")
;; '(ecb-source-path (quote ("d:/Current_Task/Source")))
;; '(ecb-tar-setup (quote cons))
;; '(ecb-wget-setup (quote cons))
;; '(show-paren-mode t)
;; '(tabbar-buffer-groups-function (quote tabbar-buffer-ignore-groups))
;; '(tabbar-buffer-list-function (quote tabbar-buffer-list))
;; '(tabbar-cycling-scope nil)
;; '(tabbar-mode t)
;; '(transient-mark-mode t))
;; (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;; )
;----------------------------------------------
;; (setq semanticdb-project-roots 
;;           (list
;;         (expand-file-name "/")))
;; (setq semanticdb-default-save-directory "~/.emacs.d/auto-save-list")
;;设置semantic.cache路径


;;auto complete;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;自动补全功能，这事从王垠的网站直接Copy过来的，引用一些他对此的说明
;;你可以设置以下 hippie-expand 的补全方式。它是一个优先列表， hippie-expand 会优先使用表最前面的函数来补全
;;这是说，首先使用当前的buffer补全，如果找不到，就到别的可见的窗口里寻找，如果还找不到，那么到所有打开的buffer去找，如果还……那么到kill-ring里，到文件名，到简称列表里，到list，…… 当前使用的匹配方式会在 echo 区域显示。
;;特别有意思的是 try-expand-line，它可以帮你补全整整一行文字。我很多时后有两行文字大致相同，只有几个字不一样，但是我懒得去拷贝粘贴以下。那么我就输入这行文字的前面几个字。然后多按几下 M-/ 就能得到那一行。
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
	  '(try-expand-line
		try-expand-line-all-buffers
		try-expand-list
		try-expand-list-all-buffers
		try-expand-dabbrev
		try-expand-dabbrev-visible
		try-expand-dabbrev-all-buffers
		try-expand-dabbrev-from-kill
		try-complete-file-name
		try-complete-file-name-partially
		try-complete-lisp-symbol
		try-complete-lisp-symbol-partially
		try-expand-whole-kill))

;;kjin  auto-complete
;;(require 'popup)
(add-to-list 'load-path "~/.emacs.d/elisp/autocomplete")
;;(require 'auto-complete) 
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/autocomplete/ac-dict")
(ac-config-default)

;;kjin  yasnippet
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets" ;; personal snippets
        ))
(yas-global-mode 1)

;;kjin auto-complete-clang for c++ , need install clang first
(require 'auto-complete-clang)  
;;(setq ac-clang-auto-save t)  
(setq ac-auto-start nil)
(setq ac-quick-helpelp-delay 0.5)
;; (ac-set-trigger-key "TAB")  
;;(define-key ac-mode-map  (kbd "M-/") 'auto-complete)  
(define-key ac-mode-map  [(control tab)] 'auto-complete)  
(defun my-ac-config ()  
  (setq ac-clang-flags  
        (mapcar(lambda (item)(concat "-I" item))  
               (split-string "  
 /usr/include/c++/4.8.5
 /usr/include/c++/4.8.5/x86_64-redhat-linux
 /usr/include/c++/4.8.5/backward
 /usr/lib/gcc/x86_64-redhat-linux/4.8.5/include
 /usr/local/include
 /usr/include
")))  
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))  
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)  
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)  
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)  
  (add-hook 'css-mode-hook 'ac-css-mode-setup)  
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)  
  (global-auto-complete-mode t))  
(defun my-ac-cc-mode-setup ()   
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))  
;;(add-hook 'c++-mode-common-hook 'my-ac-cc-mode-setup)  
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)  
;; ac-source-gtags  
(my-ac-config)  

;;
(defun my-indent-or-complete ()
   (interactive)
   (if (looking-at "\\>")
          (hippie-expand nil)
          (indent-for-tab-command))
)
(global-set-key [(control tab)] 'my-indent-or-complete)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;kjin  bm  https://github.com/joodland/bm
(require 'bm)

;;for python
(require 'virtualenv)

;;latex 2016-11-09
(getenv "PATH")
 (setenv "PATH"
(concat
 "/usr/texbin" ":" "/Library/TeX/texbin" ":"
 (getenv "PATH")))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2016/bin/x86_64-darwin/"))
(setq exec-path (append exec-path '("/usr/local/texlive/2016/bin/x86_64-darwin/")))

;; auctex
(require 'jk-init-auctex)


;; org pdf
(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
							  "xelatex -interaction nonstopmode %f"))
