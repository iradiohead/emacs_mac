;;ͳһ���ü��ﶨ�����������������ļ���������ⱻ�󶨵ļ���С�ı�����������ļ����� 
;;����ϰ�ߣ�F1�򿪰��������ð�����info��woman��������emacs�п�man�� 
;;kjin (global-set-key [(f1)] 'info)


;;kjin comment it  
;; ;;�ָ������ü� 
(global-set-key [(f1)] 'undo) 
;;���ָ������Ǻܳ��ã����ǰ��˻��Ƿ���Щ 
(global-set-key [(ctrl f1)] 'redo)

;;kjin add for bm
(global-set-key (kbd "<C-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)


;;����highlight
(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-prev)
(global-set-key [(control meta f3)] 'highlight-symbol-query-replace)

;;F4,kill����ϰ�����ã��رյ�ǰbuffer 
(global-set-key [(f4)] 'kill-this-buffer) 
;;��һ���նˣ�������İ��ÿ��԰�Ϊ��eshell,shell,terminal-emulator 
(global-set-key [(ctrl f5)] 'eshell) 
(global-set-key [(f5)] 'shell)
;;�ļ������������� 
(global-set-key [(f6)] 'dired-jump)
(global-set-key [(ctrl f6)] 'dired-jump-other-window)

;;ͬclear��ʶ�����幦����fxq-functions.el���� 
;;(global-set-key [(f7)] 'fxq-line-to-top-of-window) 
;;kjin(global-set-key [(f7)] ��hs-toggle-hiding)

;;��������ѧscheme������ 
;;(global-set-key [f8] 'run-scheme) 
;;���ҵ����� 
;;(global-set-key [(f8)] 'calendar)

;;/* Added by Ferry for ispell and flyspell mode 20120807*/
(global-set-key (kbd "<f8>") 'ispell-word)
(global-set-key (kbd "C-S-<f8>") 'flyspell-mode)
(global-set-key (kbd "C-M-<f8>") 'flyspell-buffer)
(global-set-key (kbd "C-<f8>") 'flyspell-check-previous-highlighted-word)
(defun flyspell-check-next-highlighted-word ()
  "Custom function to spell check next highlighted word"
  (interactive)
  (flyspell-goto-next-error)
  (ispell-word)
  )
(global-set-key (kbd "M-<f8>") 'flyspell-check-next-highlighted-word)

;;/* Added by Ferry for adjusting font size 20130403 */
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)

;;��speedbar
(global-set-key [(f9)] 'bookmark-bmenu-list)
;;(global-set-key [(f9)] 'gnus) 

;;ϰ�����ã��򿪣��رղ˵� 
(global-set-key [(f10)] 'menu-bar-mode) 
;;/*2007/6/13 added by Fu to set key for listing bookmark and adding current bookmark*/
;; (global-set-key [(f11)] 'list-bookmarks)
(global-set-key [(f11)] 'bookmark-jump)
(global-set-key [(f12)] 'bookmark-set)
;;����ȣ���ʱ�������� 
;;(global-set-key [f11] 'compile) 
;;(global-set-key [f12] 'gdb) 

;;ϰ�����ã�Home���趨��굽�ļ���ͷ 
(global-set-key [(home)] 'beginning-of-buffer) 
;;ϰ�����ã�End���趨��굽�ļ���β 
(global-set-key [(end)] 'end-of-buffer) 

;;��������ע
(global-set-key (kbd "C-c C-c") 'comment-region) 
(global-set-key (kbd "C-c C-v") 'uncomment-region) 

;;��ECB compile window
(global-set-key (kbd "C-c t") 'ecb-toggle-compile-window) 

;;Hide/Show Related shortcut 17/12/2010
;;   hs-hide-block                      C-c @ C-h
;;   hs-show-block                      C-c @ C-s
;;   hs-hide-all                        C-c @ C-M-h
;;   hs-show-all                        C-c @ C-M-s
;;   hs-hide-level                      C-c @ C-l
;;   hs-toggle-hiding                   C-c @ C-c
(global-set-key (kbd "C-c h") 'hs-hide-block) 
(global-set-key (kbd "C-c x") 'hs-show-block) 
(global-set-key (kbd "C-c l") 'hs-hide-level) 
(global-set-key (kbd "C-c c") 'hs-toggle-hiding) 

;; Add by Ferry to occur mode on 20121016
(define-key occur-mode-map "n" 'next-error-no-select)
(define-key occur-mode-map "p" 'previous-error-no-select)
(define-key occur-mode-map " " 'occur-mode-display-occurrence)
(define-key occur-mode-map "o" (lambda () (interactive)
                                 (occur-mode-goto-occurrence)
                                 (delete-other-windows)))
;;meta�ڳ���PC���Ͼ���Alt�� 
;;����������Ҫ�ǹ���ƶ��� 
(global-set-key [(meta up)]   'goto-line) 
(global-set-key [(meta down)] 'goto-line) 
(global-set-key [(meta left)] 'backward-sexp) 
(global-set-key [(meta right)] 'forward-sexp) 
(define-key esc-map [up]   'goto-line)
(define-key esc-map [down] 'goto-line)
(define-key esc-map [left] 'backward-sexp)
(define-key esc-map [down] 'forward-sexp)

(global-set-key [(meta p)] 'beginning-of-defun) 
(global-set-key [(meta n)] 'end-of-defun) 
(global-set-key [(meta m)] 'pop-to-mark-command) 
(global-set-key [(meta return)] 'pop-global-mark) 

;; find tag in another buffer 20091231
(global-set-key [(control .)] 'find-tag-other-window) 

;; refresh buffer
(global-set-key (kbd "C-c r") 'revert-buffer) 

;;��Emacsʱ���ö�����ڣ�����֮����ƶ��ܳ���
(global-set-key [(meta o)] 'other-window)
;;������ҵ��л�buffer�����ã�ͬwindows������ʶ 
;;û����windows��������࣬��Щϰ�߻��治�ø� 
;;����emacs�����þ��Ǻ��䣬������ 
(global-set-key [(control tab)] 'tabbar-forward) 
(global-set-key (kbd "C-`") 'tabbar-backward)
;;��������Ǹı�outline�Ŀ�ݼ�ǰ׺ 
;;outline��Ҫ���ڱ�̵ȣ�Ŀǰ�õĲ��� 
(setq outline-minor-mode-prefix [(control o)]) 

;;Ĭ�ϵ�Ctrl-z��ʲô���ţ��ر�emacs�ɣ�������ǿ�йرգ����ã���C-x c�ͺ��� 
;;�Ҿͽ�Ctrl-z��Ϊ�ҵļ��İ� 
(define-prefix-command 'ctl-z-map) 
(global-set-key (kbd "C-z") 'ctl-z-map) 
;;���뵱ǰemacs-lispԴ��Ϊelc 
(global-set-key (kbd "C-z b") 'emacs-lisp-byte-compile) 
;;���ҵļ�����
(global-set-key (kbd "C-z c") 'calculator) 
;;�ֵ书�ܣ����ǲ鵥�� 
(global-set-key (kbd "C-z d d") 'dictionary-lookup-definition) 
;;���������� 
(global-set-key (kbd "C-z d s") 'dictionary-search) 
;;��ѯ��ǰ���ʵ�ƥ��ĵ��ʣ����ڲ�ȫ���� 
(global-set-key (kbd "C-z d m") 'dictionary-match-words) 
;;�ֵ���ʾģʽ��ͬ�ֵ���Զ�ȡ�ʹ������� 
(global-set-key (kbd "C-z d t") 'dictionary-tooltip-mode) 
;;Toggle ECB windows ON/OFF
(global-set-key (kbd "C-z e e") 'ecb-toggle-ecb-windows)
(global-set-key (kbd "C-z e l") 'ecb-toggle-layout)
;;�����ҵ�IRC�ͻ��ˣ���sirȥ 
;;(global-set-key (kbd "C-z e s") 'erc-irc) 
;;��fans����ȥ 
;;(global-set-key (kbd "C-z e f") 'erc-fans) 
;;����ƴд���ģʽ��ֻ���򿪺�����ĵ��� 
(global-set-key (kbd "C-z f m") 'flyspell-mode) 
;;������buffer����ƴд��� 
(global-set-key (kbd "C-z f b") 'flyspell-buffer) 
;;��gnus 
(global-set-key (kbd "C-z g") 'gnus) 
;;�������ļ��ж������� 
(global-set-key (kbd "C-z h c") 'fxq-count-words-region) 
;;ͬClear�� 
(global-set-key (kbd "C-z h l") 'fxq-line-to-top-of-window) 
;;ƴд��� 
(global-set-key (kbd "C-z i") 'ispell-minor-mode) 
;;debug 
(global-set-key (kbd "C-z j") 'jdb) 
;;�鿴ǰ��ɾ�������ݼ�¼ 
(global-set-key (kbd "C-z k") 'browse-kill-ring) 
;;Toggle line number mode 
(global-set-key (kbd "C-z l") 'wb-line-number-toggle) 
;;�����ҵ�maxima��Ư��ģʽ 
(global-set-key (kbd "C-z m") 'imaxima) 
;;������narrow���� 
(global-set-key (kbd "C-z n n") 'narrow-to-region) 
(global-set-key (kbd "C-z n w") 'widen) 
(global-set-key (kbd "C-z o") 'occur) 
;;����С��Ϸ 
(global-set-key (kbd "C-z p g") 'gomoku) 
(global-set-key (kbd "C-z p t") 'tetris) 
;;������html-helper-modeģʽ��F4��ʧЧ������������ر�buffer 
(global-set-key (kbd "C-z q") 'kill-this-buffer) 
;;��marked�ļ���������ʽ������ 
(global-set-key (kbd "C-z r") 'dired-do-query-replace-regexp) 
;;�ҵ�schemeҲ�ǿ�����emacs�����е�
(global-set-key (kbd "C-z s") 'run-scheme) 
;;�ҵ��ն� 
(global-set-key (kbd "C-z t") 'term) 
;;������emacs�༭�ļ�ʹ��vimϰ�ߣ����õ���vi-mode��viper-mode 
(global-set-key (kbd "C-z v") 'vi-mode) 
;;�ҵ��ļ������� 
;; (global-set-key (kbd "C-z u d") 'dired-jump) 
;; (global-set-key (kbd "C-z u f") 'folding-mode) 
;; (global-set-key (kbd "C-z u o") 'outline-minor-mode) 
;;��ѯservice����fxq-other-elisp 
(global-set-key (kbd "C-z u s") 'services-look-up) 
;;wiki�еİ����ã����õĲ��� 
(global-set-key (kbd "C-z w c") 'emacs-wiki-change-project) 
(global-set-key (kbd "C-z w f") 'emacs-wiki-find-file) 
(global-set-key (kbd "C-z w h") 'emacs-wiki-preview-html) 
(global-set-key (kbd "C-z w i") 'emacs-wiki-index) 
(global-set-key (kbd "C-z w p") 'emacs-wiki-publish) 
(global-set-key (kbd "C-z w s") 'emacs-wiki-search) 
;;�ҵ������ 
(global-set-key (kbd "C-z w w") 'w3m) 
;;ͬC-z b�е㲻ͬ���ڱ���󲢼��� 
(global-set-key (kbd "C-z x") 'emacs-lisp-byte-compile-and-load) 
;;ͬyank�е㲻һ�����������������ˣ��о������yank�õ� 
(global-set-key (kbd "C-z y") 'clipboard-yank) 
;;�޸ĺ���趨mark�İ󶨣����ھ������˷�סcontrol�����͸���������������� 
(global-set-key (kbd "C-z z") 'set-mark-command) 
(global-set-key (kbd "C-z C-z") 'set-mark-command) 
;;run rgrep command
(global-set-key (kbd "C-z C-s") 'rgrep) 
(setq grep-find-command "find . ! -name \"*svn*\" -type f -print0 | \"xargs\" -0 -e grep -in -ie ")

;;there are severl other key-map below in other files 
;;ctrl-f-folding-mode-prefix 
;;ido key-map 
;;severl self define functions related key-bindings. 

;; ;;; browse-url setting
(require 'browse-url)
(global-set-key [S-mouse-2] 'browse-url-at-mouse)

;;; Match-paren
;;  go to corresponding paren
(define-key emacs-lisp-mode-map "%" 'match-paren)
(global-set-key "%" 'match-paren) 

; M-? help-for-help
(global-set-key "\M-?" 'help-for-help)

; Compile
(global-set-key "\C-x\C-y" 'compile)

;; Add by Ferry to replace Alt-x method on 20120416
;(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Add by Ferry to modify ctrl-w on 20120416
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)


;;/*2007/6/8 added by Fu to set "make -k" to "make"*/
'(compile-command "make")
;;/*2007/6/23 added by Fu to "C-x C-b"*/
(global-set-key "\C-x\C-b" 'electric-buffer-list)
;;/*2007/6/23 added by Fu to keep end when next-line"*/
(setq track-eol t)
;;/*2007/6/23 added by Fu to show the binding keys when used "M-x COMMAND""*/
(setq suggest-key-bindings 1)
;;/*2007/6/13 added by Fu to set speedbar*/
(global-set-key (kbd "M-s") 'ecb-goto-window-directories)

;; his-speedbar-no-separate-frame
(defconst his-speedbar-buffer-name "SPEEDBAR")
(defun his-speedbar-no-separate-frame ()
  (intERACTIVE)
  (when (not (buffer-live-p speedbar-buffer))
    (setq speedbar-buffer (get-buffer-create his-speedbar-buffer-name)
          speedbar-frame (selected-frame)
          dframe-attached-frame (selected-frame)
          speedbar-select-frame-method 'attached
          speedbar-verbosity-level 0
          speedbar-last-selected-file nil)
    (set-buffer speedbar-buffer)
    (speedbar-mode)
    (speedbar-reconfigure-keymaps)
    (speedbar-update-contents)
    (speedbar-set-timer 1)
    (make-local-hook 'kill-buffer-hook)
    (add-hook 'kill-buffer-hook
              (lambda () (when (eq (current-buffer) speedbar-buffer)
                           (setq speedbar-frame nil
                                 dframe-attached-frame nil
                                 speedbar-buffer nil)
                           (speedbar-set-timer nil)))))
  (set-window-buffer (selected-window)
                     (get-buffer his-speedbar-buffer-name)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;kjin cmt it 
;; ;; ;;Setting for cscope
;; (global-set-key (kbd "C-c s d") 'cscope-find-this-symbol)
;; (global-set-key (kbd "C-c s g") 'cscope-find-global-definition)
;; (global-set-key (kbd "C-c s G") 'cscope-find-global-definition-no-prompting)
;; (global-set-key (kbd "C-c s c") 'cscope-find-functions-calling-this-function)
;; (global-set-key (kbd "C-c s C") 'cscope-find-called-functions)
;; (global-set-key (kbd "C-c s t") 'cscope-find-this-text-string)
;; (global-set-key (kbd "C-c s e") 'cscope-find-egrep-pattern)
;; (global-set-key (kbd "C-c s f") 'cscope-find-this-file)


;; (define-key global-map [(control f3)]  'cscope-set-initial-directory)
;; (define-key global-map [(control f4)]  'cscope-unset-initial-directory)
;; (define-key global-map [(control f5)]  'cscope-find-this-symbol)
;; (define-key global-map [(control f6)]  'cscope-find-global-definition)
;; ;;(define-key global-map [(control f7)]
;; ;;	  'cscope-find-global-definition-no-prompting)
;; (define-key global-map [(control f8)]  'cscope-pop-mark)
;; (define-key global-map [(control f9)]  'cscope-next-symbol)
;; (define-key global-map [(control f10)] 'cscope-next-file)
;; (define-key global-map [(control f11)] 'cscope-prev-symbol)
;; (define-key global-map [(control f12)] 'cscope-prev-file)
;; (define-key global-map [(meta f9)]  'cscope-display-buffer)
;; (define-key global-map [(meta f10)] 'cscope-display-buffer-toggle)
