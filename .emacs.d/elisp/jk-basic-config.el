;; ;; $AIhVC13>0QUI+:MWVLeQUI+(B
(setq default-frame-alist
      (append (list 
           ;; '(foreground-color . "white")
		   ;; '(background-color . "black")
		   ;; '(background-color . "gray")
		   ;; '(border-color . "grey")
		    '(mouse-color . "mediumpurple")
		    '(cursor-color . "green")
;;		    '(ime-font . (w32-logfont "$A#M#S(B $A%4%7%C%/(B"
;;					      0 16 400 0 nil nil nil
;;					      128 1 3 49)) ; TrueType $A$N$_(B
;;		    '(font . "bdf-fontset")    ; BDF
;;		    '(font . "private-fontset"); TrueType
		    '(width . 150)
		    '(height . 50)
		    '(top . 5)
		    '(left .5))
	      default-frame-alist))

;; ;;$A2;R*HC9b1jIAK8(B(blink-cursor-mode -1) 
;; ;; $AIhVCAmMbR;P)QUI+#:So7(8_AAOTJ>5D13>0:MVwLb#,GxSrQ!Tq5D13>0:MVwLb#,6~4NQ!Tq5D13>0:MQ!Tq(B
;; ;; (set-face-foreground 'highlight "white")
;; (set-face-background 'highlight "black")
;; (set-face-foreground 'region "cyan")
;; (set-face-background 'region "black")
;; (set-face-foreground 'secondary-selection "skyblue")
;; (set-face-background 'secondary-selection "darkblue")

;;(require 'color-theme)
;;(color-theme-dark-laptop)
;;set the menu colors and font using the menu face.
;;(set-face-font 'menu "7x14")
;;(set-default-font "Courier New-10")
;; (set-default-font "Courier New-12")
;; (set-face-foreground 'menu "white")

;; kjin Setting English Font
;;(set-face-attribute
;; 'default nil :font "DejaVu Sans Mono 12")

(set-face-attribute 'default nil :height 144)

;;;Tab is 4
;; $AG?VFJdHk(BTab$AJ1#:(BC-q C-i
;;Forced set tab width
(setq default-tab-width 4)
;; 2012/06/30 Forced replace tab width with some whitespace
;;kjin (setq-default indent-tabs-mode nil)
;; 2012/07/02 Set default TAGS file
;;(setq tags-file-name "D:/Current_Task/Source/RCY/ALL/TAGS_ALL")

;;/*2007/6/13 added by Fu to set path for cygwin*/
;;  ;; This assumes that Cygwin is installed in C:\cygwin (the
;;  ;; default) and that C:\cygwin\bin is not already in your
;;  ;; Windows Path (it generally should not be).
;;  ;;
;; (setenv "PATH" (concat "d:/emacs/cygwin/bin;" (getenv "PATH")))
;; (setq exec-path (cons "d:/emacs/cygwin/bin" exec-path))

;;kjin comment it as it seem will prevent access to root folder /
;;(setenv "PATH" (concat "C:/APPS/cygwin/bin;" (getenv "PATH")))
;;(setq exec-path (cons "C:/APPS/cygwin/bin" exec-path))
;;(require 'cygwin-mount)
;;(cygwin-mount-activate)
;;(setenv "CYGWIN" "nodosfilewarning")

(defadvice grep-compute-defaults (around grep-compute-defaults-advice-null-device)
  "Use cygwin's /dev/null as the null-device."
  (let ((null-device "/dev/null"))
	ad-do-it))
(ad-activate 'grep-compute-defaults)

;;;Cancel mouse setting
(setq w32-hide-mouse-on-key t)
(setq w32-hide-mouse-timeout 5000)


(require 'w32-browser)
(eval-after-load "dire"
  '(define-key dired-mode-map [f3] (lambda()
									 (internactive)
									 (w32-browser
									  (dired-replace-in-string
									   "/" "\\"
									   9dired-get-filename)))))
(setq print-region-function 'w32-print-region)

;;$AIhVCHU@z5DR;P)QUI+(B
;;(setq calendar-load-hook
;;'(lambda ()
;;(set-face-foreground 'diary-face "skyblue")
;;(set-face-background 'holiday-face "slate blue")
;;(set-face-foreground 'holiday-face "white")))

;;$AMb9[IhVC(B
;;$AH%5t9$>_@8(B
;;(tool-bar-mode nil)
(tool-bar-mode -1)
;;$AH%5t2K5%@8#,NR=+(BF10$A0s6(N*OTJ>2K5%@8#,MrR;J2C46+NwM|AK#,PhR*2K5%@8AK?IRT^t(BF10$A5w3v#,TY^t(BF10$A>MH%5t2K5%(B
;;(menu-bar-mode nil)
;;kjin need menu bar
;;(menu-bar-mode -1)
;;$A2;R*9v6/@8#,OVTZ6<SC9vVaJs1jAK#,?IRT2;SC9v6/@8AK(B
;;(scroll-bar-mode nil)
;;(scroll-bar-mode -1)

;;$A187]IhVC(B
;;emacs$A;9SPR;8vWT6/1#4f9&D\#,D,HOTZ(B~/.emacs.d/auto-save-list$A@o#,Ub8v7G3#SPSC#,NRUb@oC;SP8D6/#,>_Le?IRT2N<{(BSams teach yourself emacs in 24hours($ANR<r3FN*(Bsams24)
;;$AFtSC0f1>?XVF#,<4?IRT187]6`4N(B
;;kjin (setq version-control t)
;;$A187]WnT-J<5D0f1>A=4N#,<G5ZR;4N1`<-G05DND55#,:M5Z6~4N1`<-G05DND55(B
;;kjin (setq kept-old-versions 2)
;;$A187]WnPB5D0f1>Ne4N#,@m=bM,IO(B
;;kjin (setq kept-new-versions 5)
;;$AI>5t2;JtSZRTIO(B7$AVP0f1>5D0f1>(B
;;kjin (setq delete-old-versions t)
;;$AIhVC187]ND<~5DB7>6(B
(setq backup-directory-alist '(("." . "~/.emacs.d/auto-save-list")))
;;$A187]IhVC7=7(#,V1=S?=14(B
(setq backup-by-copying t)
;;kjin  ~$AND<~(B
(setq make-backup-files nil)

(setq fast-lock-cache-directories '("~/.emacs-flc" "."))  

;;$AJ1<d4AIhVC(B(time-stamp)$A#,Ih6(ND55IO4N1#4f5DPEO"(B
;;$AV;R*@oTZDc5CND55@oSP(BTime-stamp:$A5DIhVC#,>M;aWT6/1#4fJ1<d4A(B
;;$AFtSC(Btime-stamp
(setq time-stamp-active t)
;;$AH%5t(Btime-stamp$A5D>/8f#?(B
(setq time-stamp-warn-inactive t)
;;$AIhVC(Btime-stamp$A5D8qJ=#,NRHgOB5D8qJ=Ky5C5DR;8v@}WS#:(B<hans 05/18/2004 12:01:12>
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")
;;$A=+P^8DJ1<d4ALm<S5=1#4fND<~5D6/Ww@o!#(B
(add-hook 'write-file-hooks 'time-stamp)

;;$AJ1<dOTJ>IhVC(B
;;$AFtSCJ1<dOTJ>IhVC#,(B
(display-time-mode 1)
;;$AJ1<dJ9SC(B24$AP!J1VF(B
(setq display-time-24hr-format t)
;;$AJ1<dOTJ>0|@(HUFZ:M>_LeJ1<d(B
(setq display-time-day-and-date t)
;;$AJ1<d@8ET1_FtSCSJ<~IhVC(B
(setq display-time-use-mail-icon t)
;;$AJ1<d5D1d;/F5BJ#,5%N;6`IY@4WE#?(B
(setq display-time-interval 10)

;;$AFtSC(Bminibuffer$A#,:COqJGD,HOIhVC0I(B
(minibuffer-electric-default-mode 1)
;;$AFtSC2?7V29H+9&D\#,HgJdHk(BM-x q r r$AO`51SZ(BM-x query-replace-regexp
;; Commented by Ferry on 08/07/2012 for this command is not support in Emacs v24.1
;;(partial-completion-mode 1)
;;$ATZ(Bminibuffer$A@oFtSCWT6/29H+:/J}:M1dA?(B
(icomplete-mode 1)
;;$AKySP5DNJLbSC(By/n$A7=J=#,2;SC(Byes/no$A7=J=!#SP5c@A#,V;OkJdHkR;8vWVD8(B
(fset 'yes-or-no-p 'y-or-n-p)
;;$ATJPm(Bminibuffer$AWTSI1d;/Fd4sP!#(V8?m6H#)(B
(setq resize-mini-windows t)
;;$A51Q0URR;8vM,C{5DND<~#,WT6/9XA*IODG8vND<~#?(B
(setq uniquify-buffer-name-style 'forward)
;;$ATZ(Bemacs$A6A(Bman$AND55J1#,J9SC51G0(Bbuffer
(setq Man-notify-method 'pushy)
;;$AJs1jWT6/1\?*V8Uk#,Hg51DcJdHk5DJ1:r#,V8Uk5=AKJs1j5DN;VC#,Js1jSP5c52W!JSO_AK(B
(mouse-avoidance-mode 'animate)
;;$ATJPmWT6/4r?*M<F,#,Hg(Bwiki$A@oCf(B
(auto-image-file-mode t)
;;$A?IRT2YWwQ9KuND55(B
(auto-compression-mode 1)
;;$ATZ(Bminibuffer$AIOCf?IRTOTJ>AP:E(B
(column-number-mode t)
;;$AOTJ>D,HO5DND555D?m6H#,?4Fp@41H=OJf7~#?(B
(setq default-fill-column 60)
;;$AV8Uk2;R*IA#,NR5CQ[>&;(AK(B
(blink-cursor-mode -1)
(transient-mark-mode 1)
;;$A51V8Uk5=R;8v@(:EJ1#,WT6/OTJ>KyF%Ed5DAmR;8v@(:E(B
(show-paren-mode 1)
;;$AJGSC9vVaJs1j(B
(mouse-wheel-mode t)
;;$AH%5t73HK5D>/8fAeIy(B
(setq visible-bell -1)
;;$A9v6/R3CfJ11H=OJf7~#,2;R*U{R35D9v6/(B
(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000)
;;$AIh6(>dWS=aN2#,VwR*JGUk6TVPNDIhVC(B
(setq sentence-end "\\([?$A!j!j(B?$A!j(B?]\\|?-?-\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;;$AH%5t(BEmacs$A:M(Bgnus$AFt6/J15DR}5<=gCf(B
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)
;;$A51V8UkRF5=AmR;PP#,2;R*PBTvUbR;PP#?(B
(setq next-line-add-newlines nil)
;;$ATZND55Wn:sWT6/2eHk?U0WR;PP#,:COqD3P)O5M3EdVCND<~JGPhR*UbQy5D(B
(setq require-final-newline t)
(setq track-eol t)
;;$AJ9SC(BC-k$AI>5tV8Uk5=8CPPD)5DKySP6+Nw(B
(setq-default kill-whole-line t)
;;$AIh6(I>3}1#4f<GB<N*(B200$A#,?IRT7=1cRT:sN^O^;V84(B
(setq kill-ring-max 200)
;;$ATv4sJ9SC2iUR:/J}:M1dA?5DQ0UR76N'(B
(setq apropos-do-all t)
;;$AJ9SC(Bnarrow$A9&D\J15DR;8vIhVC(B
(put 'narrow-to-region 'disabled nil)
;;$AFt6/(BEmacs$AWT6/IhVCN*A=8v40?Z(B($AIOOB8wR;8v(B)
;; (split-window-vertically)
;;$A8D1d(Bemacs$A1jLb@85D1jLb(B
(setq frame-title-format "%b@RADIOHEAD")
;;$ATJPm(Bemacs$A:MMb2?FdK{3LPr5DU3Ly(B
(setq x-select-enable-clipboard t)

;;Setting for auctex start
;;(require 'tex-mik)
;;(setq TeX-electric-escape t)

;;(load "auctex.el" nil t t)
;;(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(setq TeX-auto-untabify t) ;; $A2;J9SC(B TAB$AWV7{Ku=x(B
(setq LaTeX-document-regexp "document\\|CJK\\*?")  ;; CJK $A;7>3VP2;Ku=x(B
(add-hook 'LaTeX-mode-hook #'LaTeX-install-toolbar) 
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
;;Setting for auctex end




;;Setting for keisen-mode
(if window-system
    (autoload 'keisen-mode "keisen-mouse" "MULE table" t)
  (autoload 'keisen-mode "keisen-mule" "MULE table" t))

;;Setting fo MPG123$A8h4JM,2=OTJ>(B
;;(setq lrc-lyric-dir "C:\Program Files\TTPlayer\Lyrics")
;;(require 'mpg123)

;; kjin cmt it as i do not know why need it here as above alreay have 
;; (autoload 'senator-try-expand-semantic "senator")
;; (setq hippie-expand-try-functions-list
;;           '(
;;                 senator-try-expand-semantic
;;                 try-expand-dabbrev
;;                 try-expand-dabbrev-visible
;;                 try-expand-dabbrev-all-buffers
;;                 try-expand-dabbrev-from-kill
;;                 try-expand-list
;;                 try-expand-list-all-buffers
;;                 try-expand-line
;;         try-expand-line-all-buffers
;;         try-complete-file-name-partially
;;         try-complete-file-name
;;         try-expand-whole-kill
;;         )
;; )

;;(require 'doxymacs) ;; $AFt6/(Bdoxymacs
;;(add-hook 'c-mode-common-hook 'doxymacs-mode) ;; $AFt6/(Bdoxymacs-mode
;;(add-hook 'c++-mode-common-hook 'doxymacs-mode) ;; $AFt6/(Bdoxymacs-mode

;;Setting for autex
;;(require 'tex-mik)
;;(setq TeX-electric-escape t)

;;Setting for GDB
(setq gdb-many-windows t)

;;(load-library "multi-gud.el")
;;(load-library "multi-gdb-ui.el")


;;Setting for ahk-mode, AutoHotkey
;; (setq ahk-syntax-directory "D:/Program Files/AutoHotkey/Extras/Editors/Syntax")
;; (add-to-list 'auto-mode-alist '("\\.ahk$" . ahk-mode))
;; (autoload 'ahk-mode "ahk-mode")

;;kjin
(global-linum-mode t) ;; buildin 

;;kjin copy line if no region selected
;; copy region or whole line
(global-set-key "\M-w"
(lambda ()
  (interactive)
  (if mark-active
      (kill-ring-save (region-beginning)
      (region-end))
    (progn
     (kill-ring-save (line-beginning-position)
     (line-end-position))
     (message "copied line")))))

;;kjin --this have some issue so comment it(C-c C-c / C-c C-v)  kill region or whole line
;; (global-set-key "\C-x\C-k"
;; (lambda ()
;;   (interactive)
;;   (if mark-active
;;       (kill-region (region-beginning)
;;    (region-end))
;;     (progn
;;      (kill-region (line-beginning-position)
;;   (line-end-position))
;;      (message "killed line")))))


;;$AG?4s5DWT6/29Fk9&D\(B
;; ensure abbrev mode is always on
(setq-default abbrev-mode t)
;; do not bug me about saving my abbreviations
(setq save-abbrevs nil)

;;(find-file "D:/Current_Task/Source/RCY/Makefile")
;;(find-file "D:/emacs/diary/TimeQuadrant.org")
;;(find-file "D:/Current_Task/Source/Preprocessor_Source/PPLIST_SPM/pplist.var")
;;(find-file "~/Dropbox/emacs_docs/temp.txt")


