;;��Ĭ��ģʽ��fundemental-mode��Ϊtext-mode 
(setq default-major-mode 'text-mode) 

;;�����﷨����ģʽ 
(global-font-lock-mode t) 

;;һЩ��������ã��ӱ�ĵط��������ģ�Ŀǰ��̽��٣�����Ҳû������ˣ��о�Ŀǰ���û��Ƿǳ������ 
;;�������һ������Ա������������ϸ�ĸ� 
(setq font-lock-maximum-decoration t) 
(setq font-lock-global-modes '(not text-mode)) 
(setq font-lock-verbose t) 
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000))) 

;;����Ӧ���ļ��趨��Ӧ��ģʽ���Ա���ȷ���﷨���� 
;;�ļ�����������ʽ��ʾ��ע�ⲻҪ���渲����ǰ��Ķ��������� 
;;�޸����֮ǰ��C-h v auto-mode-alist������е����� 
(mapcar 
(function (lambda (setting) 
         (setq auto-mode-alist 
           (cons setting auto-mode-alist)))) 
'(("\\.\\(xml\\|rdf\\)\\'" . sgml-mode) 
   ("\\.\\([ps]?html?\\|cfm\\|asp\\)\\'" . html-helper-mode) 
   ("\\.css\\'" . css-mode) 
   ("\\.\\(emacs\\|session\\|gnus\\)\\'" . emacs-lisp-mode) 
   ("\\.wiki\\'" . emacs-wiki-mode) 
   ("\\.\\(jl\\|sawfishrc\\)\\'" . sawfish-mode) 
   ("\\.scm\\'" . scheme-mode) 
   ("\\.py\\'" . python-mode) 
   ("\\.\\(ba\\)?sh\\'" . sh-mode) 
   ("\\.l\\'" . c-mode) 
   ("\\.cin\\'" . c-mode) 
   ("\\.cli\\'" . c-mode) 
   ("\\.cva\\'" . c-mode) 
   ("\\.cdt\\'" . c-mode) 
   ("\\.cpd\\'" . c-mode) 
   ("\\.asm\\'" . asm-mode)
   ("\\.inc\\'" . asm-mode)
   ("\\.a86\\'" . asm-mode)
   ("\\.a30\\'" . asm-mode)
   ("\\.a38\\'" . asm-mode)
   ("\\.pac\\'" . dcl-mode)
   ("\\.html\\'" . html-mode)
   ("\\.img\\'" . hexl-mode)
   ("\\.hex\\'" . hexl-mode)
   ("\\.lnk\\'" . hexl-mode)
   ("\\.obj\\'" . hexl-mode)
   ("\\.max\\'" . maxima-mode)))

;;;
;;; cc-mode   
;;;	
;   style & indent in c-mode
;;kjin add 2016-7-31  Google C Style�����ÿո��滻Tab����������ÿ������2���ո�, �����ں�������(add-hook 'c-mode-hook 'my-c-mode-hook)
(require 'google-c-style) 
(add-hook 'c-mode-common-hook 'google-set-c-style)

;;(add-hook 'c-mode-common-hook
;;          '(lambda ()
;;         (c-set-style "bsd")
;;	     (setq c-basic-offset 4)))

; Externals to which Tab can be stricken even in case of being on right edge
(setq c-tab-always-indent nil)


(add-hook 'c-mode-hook 'linux-c-mode)
(add-hook 'c++-mode-hook 'linux-cpp-mode)

;; ����imenu������ʽΪ����������
(setq imenu-sort-function 'imenu--sort-by-name)

(defun linux-c-mode()
;; ���س�����C-j�Ĺ��ܣ����е�ͬʱ����
  (define-key c-mode-map [return] 'newline-and-indent)
  (define-key c-mode-base-map [(f7)] 'compile) ;;kjin add
  (interactive)
;; �Զ�ģʽ���ڴ���ģʽ�µ������{ʱ�����Զ����������õĶ��������
  (c-toggle-auto-state)
;; ѡ��C����ģʽ
  (c-set-style "bsd")
;;(c-set-style "K&R")
;; ��ģʽ�£�����Backspaceʱ��ɾ�����Ŀո�
  (c-toggle-hungry-state)
;; TAB���Ŀ������Ϊ4
  (setq c-basic-offset 4)
;; �ڲ˵��м��뵱ǰBuffer�ĺ�������
  (imenu-add-menubar-index)
;; ��״̬������ʾ��ǰ������ĸ��������ڲ�
  (which-function-mode)
 )

(defun linux-cpp-mode()
  (define-key c++-mode-map [return] 'newline-and-indent)
  (define-key c++-mode-map [(control c) (c)] 'compile)
 (define-key c-mode-base-map [(f7)] 'compile) ;;kjin
  (interactive)
  (c-set-style "bsd")
;;(c-set-style "K&R")
  (c-toggle-auto-state)
  (c-toggle-hungry-state)
  (setq c-basic-offset 4)
  (imenu-add-menubar-index)
  (which-function-mode)
  )


;;kjin copy from .emacs
;; load up modes I use
;;(require 'cc-mode) ;; kjin comment it, seems now default have this mode
(require 'perl-mode)
(require 'cperl-mode)
(require 'sh-script)
(require 'shell)
;;(require 'tex-site) ;; I use AUCTeX
;;(require 'latex)    ;; needed to define LaTeX-mode-hook under AUCTeX
;;(require 'tex)      ;; needed to define TeX-mode-hook under AUCTeX
;;(require 'python)   ;; I use python.el from Emacs CVS, uncomment if you do also
(setq auto-mode-alist
	  (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
	  (cons '("python" . python-mode)
			interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)
;; add these lines if you like color-based syntax highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)


;;�����۵�
(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'tnsdl-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;;
;;   hs-hide-block                      C-c @ C-h
;;   hs-show-block                      C-c @ C-s
;;   hs-hide-all                        C-c @ C-M-h
;;   hs-show-all                        C-c @ C-M-s
;;   hs-hide-level                      C-c @ C-l
;;   hs-toggle-hiding                   C-c @ C-c
;;   hs-mouse-toggle-hiding             [(shift mouse-2)]
;;   hs-hide-initial-comment-block

;;kjin for automatically huan hang
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; kjin latex
(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")))

(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))


(add-hook 'org-mode-hook
      (lambda () 
        (add-to-list 'org-latex-classes
             '("ctexart"
               "\\documentclass{ctexart}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))))

