;;��������ڱ༭һ����������λ��A����ͻȻ�뵽���ĳ����λ��B��Ҫ�޸Ļ�鿴���ģ���֮��Ҫ��ȥ�������������C-.���ڵ�ǰλ��������ǣ�Ȼ��ȥ����ȥ�ĵط�B������һ��������ҿ��Ի�Aȥ�ˣ���C-,�ͻص��ղ�����ǵĵط�A������C-,�ֻ�ص�B 
(global-set-key [(control ?.)] 'fxq-point-to-register) 
(global-set-key [(control ?\,)] 'fxq-jump-to-register) 
(defun fxq-point-to-register() 
  "Store cursorposition _fast_ in a register. 
Use fxq-jump-to-register to jump back to the stored 
position." 
  (interactive) 
  (setq zmacs-region-stays t) 
  (point-to-register 8)) 

(defun fxq-jump-to-register() 
  "Switches between current cursorposition and position 
that was stored with fxq-point-to-register." 
  (interactive) 
  (setq zmacs-region-stays t) 
  (let ((tmp (point-marker))) 
        (jump-to-register 8) 
        (set-register 8 tmp))) 

;;F7, ���� TAGS �ļ������� TAGS �� 
;;C-F7, �ڵ�ǰĿ¼�����ɰ������еݹ���Ŀ¼�� TAGS �ļ���ʹ����shell�е�find��� 
;;C-. ����С���鿴��괦�� tag 
;;C-, ֻ���µ�ǰ�鿴����Ĵ��ڣ��رղ鿴 tag ��С���� 
;;C-M-, ��ʾҪ���ҵ� tag������ת 
;;C-M-. Ҫƥ��� tag ���ʽ��ϵͳ�Ѷ��壩 
;;Shift-Tab, C/C++ �� lisp ��ģʽ�в�ȫ��������һ�������M-Tab�����ڹ����������ˣ� 
(global-set-key [(f7)] 'visit-tags-table)         ; visit tags table
(global-set-key [C-f7] 'sucha-generate-tag-table) ; generate tag table
;;(global-set-key [(control .)] '(lambda () (interactive) (lev/find-tag t)))
;;(global-set-key [(control ,)] 'sucha-release-small-tag-window)
(global-set-key (kbd "C-M-,") 'find-tag)
(define-key lisp-mode-shared-map [(shift tab)] 'complete-tag)
(add-hook 'c-mode-common-hook      ; both c and c++ mode
          (lambda ()
            (define-key c-mode-base-map [(shift tab)] 'complete-tag)))

(defun sucha-generate-tag-table ()
  "Generate tag tables under current directory(Linux)."
  (interactive)
  (let 
      ((exp "")
       (dir ""))
    (setq dir
          (read-from-minibuffer "generate tags in: " default-directory)
          exp
          (read-from-minibuffer "suffix: "))
    (with-temp-buffer
      (shell-command
       (concat "find " dir " -name \"" exp "\" | xargs etags")
       (buffer-name)))))

(defun sucha-release-small-tag-window ()
"Kill other window also pop tag mark."
  (interactive)
  (delete-other-windows)
  (ignore-errors
    (pop-tag-mark)))
;; ��������Ǵ��ĸ��ط�Ū���ģ��ڱ���~/.emacs�ļ��Զ�����Ϊ.elc�ļ� 
;;Ŀǰֻ�Ƕ�~/.emacs��Ч�������*.el�ļ���û��ȥŪ���Ժ��п��һ�ĵ� 
;;С֪ʶ�����������ļ�Խ��Խ�����*.el�����ļ���ö�����Ϊ*.elc�ļ�������������emacs�ٶȻ��кܴ������ 
(defun autocompile nil 
  "compile itself if ~/.emacs" 
  (interactive) 
  (if (string= (buffer-file-name) (concat default-directory ".emacs"))
      (byte-compile-file (buffer-file-name)))) 
(add-hook 'after-save-hook 'autocompile) 


;;����Ǵ�emacs-lisp-introduction���Ǹ��ĵ������� 
;;����ͬword�ļ������������ƣ�������������д����ƣ������Ĳ����ʹ 
     (defun fxq-recursive-count-words (region-end) 
       "Number of words between point and REGION-END." 
       (if (and (< (point) region-end) 
                (re-search-forward "\\w+\\W*" region-end t)) 
           (1+ (fxq-recursive-count-words region-end)) 
         0)) 
     (defun fxq-count-words-region (beginning end) 
       "Print number of words in the region.      
     Words are defined as at least one word-constituent 
     character followed by at least one character that is 
     not a word-constituent.  The buffer's syntax table 
     determines which characters these are." 
       (interactive "r") 
       (message "Counting words in region ... ") 
       (save-excursion 
         (goto-char beginning) 
         (let ((count (fxq-recursive-count-words end))) 
           (cond ((zerop count) 
                  (message 
                   "The region does NOT have any words.")) 
                 ((= 1 count) 
                  (message "The region has 1 word.")) 
                 (t 
                  (message 
                   "The region has %d words." count)))))) 


;;�����ǽ���ǰ����Ϊ��ҳ��һ�У�ͬ�ն��µ�clear�����е����� 
(defun fxq-line-to-top-of-window () 
  "Move the line point is on to top of window." 
  (interactive) 
  (recenter 0)) 
;;match-paren ������Ƶ���Ӧ�κ�λ��
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
		((looking-at "\\s\)") (forward-char 1) (backward-list 1))
		(t (self-insert-command (or arg 1)))))





;;; code-publish.el --- convert codes into html, used for msn space
;; Because of the limited allowed file types,
;; if the extension of this file is not .el, please change it manually.

;; Author: Qichen Huang <jasonal00+emacs at gmail.com>
;; Version: 0.2

;;; Commentary:
;; (require 'code-publish)

;; Usage:
;; M-x code-publish
;; the converted html code will be copied to kill-ring,
;; which could be directly pasted onto msn space as html code.

;; History:
;; 14.08.2006 Version 0.2
;; 14.08.2006  Added: tag <div>
;; 28.07.2006 Version 0.1

;;; Code:

(defun code-publish ()
  "Convert region between mark and point into HTML, save the result into kill ring."
  (interactive)
  (kill-new (code-publish-region (mark) (point)))
  (message "Code convert completed."))



(defvar font-header "<font size=\"2\">")
(defvar div-header "<div style=\"background-color:rgb(255,255,224);\">")
(defvar footer "</div></font>")
(defvar tag-open "<span style=\"font-family: Courier New,Courier,Monospace;")
(defvar tag-close ">")
(defvar tag-end "</span>")
(defvar newline-tag "<br>")
(defvar space "&nbsp;")
(defvar space2 "&nbsp;&nbsp;")
(defvar space4 "&nbsp;&nbsp;&nbsp;&nbsp;")

(defvar code-builtin-color       " color: rgb(0,139,0);\"")
(defvar code-comment-color       " color: rgb(205,0,0); font-style: italic;\"")
(defvar code-constant-color      " color: rgb(47,79,79);\"")
(defvar code-doc-color           " color: rgb(0,139,0);\"")
(defvar code-function-name-color " color: rgb(0,0,255); font-weight: bold;\"")
(defvar code-keyword-color       " color: rgb(160,32,240);\"")
(defvar code-preprocessor-color  " color: rgb(250,128,114);\"")
(defvar code-string-color        " color: rgb(0,139,0);\"")
(defvar code-type-color          " color: rgb(0,0,128);\"")
(defvar code-variable-name-color " color: rgb(139,90,40);\"")
(defvar code-warning-color       " color: rgb(255,0,0);\"")
(defvar code-default-color       " \"")

(defun code-publish-region (begin-point end-point)
  (let ((beg (min begin-point end-point))
        (end (max begin-point end-point))
        (str "")
        (tmp nil)
        (result nil)
        (tface nil)
        (color "")
        )
    ;;(beginning-of-buffer)
    (unless (= beg end)
      (save-excursion
        (setq result (concat result font-header))
        (setq result (concat result div-header))
        (goto-char beg)
        (while (< (point) end)
          (setq tmp (next-single-property-change (point) 'face))
          (unless tmp
            (setq tmp end)) ;; there is no face change, set tmp to end point
          ;; no cross-line properties
          (when (> tmp (line-end-position))
            (setq tmp (line-end-position))) ;; New line
          ;; skip spaces and tabs
          (save-excursion
            (goto-char tmp)
            (when (looking-at "[ \t]+")
              (re-search-forward "[ \t]+" (line-end-position) t)
              (setq tmp (point))))
          (when (> tmp end)
            (setq tmp end))
          (setq str (buffer-substring-no-properties (point) tmp))
          (while (string-match "<" str)
            (setq str (replace-match "&lt;" t nil str)))
          (while (string-match ">" str)
            (setq str (replace-match "&gt;" t nil str)))
          (while (string-match "  " str)
            (setq str (replace-match space2 t nil str)))
          (while (string-match "\t" str)
            (setq str (replace-match space4 t nil str)))
          (setq tface (get-text-property (point) 'face))
          (when (listp tface)
            (setq tface (car tface)))
          (cond
           ((eq tface font-lock-builtin-face)
            (setq color code-builtin-color))
           ((eq tface font-lock-comment-face)
            (setq color code-comment-color))
           ((eq tface font-lock-constant-face)
            (setq color code-constant-color))
           ((eq tface font-lock-doc-face)
            (setq color code-doc-color))
           ((eq tface font-lock-function-name-face)
            (setq color code-function-name-color))
           ((eq tface font-lock-keyword-face)
            (setq color code-keyword-color))
           ((eq tface font-lock-preprocessor-face)
            (setq color code-preprocessor-color))
           ((eq tface font-lock-string-face)
            (setq color code-string-color))
           ((eq tface font-lock-type-face)
            (setq color code-type-color))
           ((eq tface font-lock-variable-name-face)
            (setq color code-variable-name-color))
           ((eq tface font-lock-warning-face)
            (setq color code-warning-color))
           (t (setq color code-default-color)))
          ;; (setq color "<span color=\"\">")
          (setq result (concat result tag-open color tag-close str tag-end))
          (when (= tmp (line-end-position))
            (setq result (concat result newline-tag))
            (setq tmp (+ 1 (line-end-position))))
          (goto-char tmp))
        (setq result (concat result footer))
        result
        ))))

(provide 'code-publish)

;;; ################ code-publish ends here #######################
