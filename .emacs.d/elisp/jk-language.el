;;emacs��������
;;���廷������
(set-language-environment 'Chinese-GBK)
;(set-clipboard-coding-system 'euc-cn)
;(set-terminal-coding-system 'euc-cn)
;(set-buffer-file-coding-system 'euc-cn)
;(set-selection-coding-system 'euc-cn)
;(modify-coding-system-alist 'process "*" 'euc-cn)
;(setq default-process-coding-system 
;  '(euc-cn . euc-cn))
;(setq-default pathname-coding-system 'euc-cn)

;;Ӧ�ú������й�ϵ
;;(set-keyboard-coding-system 'chinese-iso-8bit-with-esc)
;;�ն���emacs���������ã�
;(set-terminal-coding-system 'chinese-iso-8bit-with-esc)
;;�ļ�����ʱ�ı�������
;(set-buffer-file-coding-system 'chinese-iso-8bit-with-esc)
;;����������emacs�����������ิ�ƣ�ճ��������
;;����3��hvj-basicconfig.el�������һ����Ҳ����ص�һ���趨
;;(set-selection-coding-system 'chinese-iso-8bit-with-esc)
;;(set-clipboard-coding-system 'chinese-iso-8bit-with-esc)
;;ʲô���ã����ˣ���Щ��û��������Щ
;;(modify-coding-system-alist 'process "*" 'chinese-iso-8bit-with-esc)
;;(setq default-process-coding-system '(chinese-iso-8bit-with-esc . chinese-iso-8bit-with-esc))
;;(setq-default pathname-coding-system 'chinese-iso-8bit-with-esc)

;;Setting for the mule-gbk
;;(setq w32-charset-info-alist
;;    (cons '("gbk" w32-charset-gb2312 . 936) w32-charset-info-alist))
;;(set-w32-system-coding-system 'chinese-gbk)
;;(set-selection-coding-system 'chinese-gbk)
;;(set-keyboard-coding-system 'chinese-gbk)
;;(set-language-environment 'chinese-gbk)
;;(setq locale-coding-system 'chinese-gbk)
;;(setq current-language-environment "Chinese-GBK")

;;�����������˳��
;;(setq font-encoding-alist
;;(append '(("MuleTibetan-0" (tibetan . 0))
;;("GB2312" (chinese-gb2312 . 0)) 
;;("JISX0208" (japanese-jisx0208 . 0)) 
;;("JISX0212" (japanese-jisx0212 . 0)) 
;;("VISCII" (vietnamese-viscii-lower . 0)) 
;;("KSC5601" (korean-ksc5601 . 0)) 
;;("MuleArabic-0" (arabic-digit . 0)) 
;;("MuleArabic-1" (arabic-1-column . 0)) 
;;("MuleArabic-2" (arabic-2-column . 0))) font-encoding-alist))


;;;;;;;;;;;;;;;;;;;;;;;;;;;kjin;;;;;;;;;;;;;;;;;;;;;;;
(set-language-environment 'Chinese-GB)                          
(set-keyboard-coding-system 'euc-cn)  
;;(set-clipboard-coding-system 'euc-cn)      
(set-clipboard-coding-system 'euc-cn)                              
(set-terminal-coding-system 'euc-cn)                                                                  
(set-buffer-file-coding-system 'euc-cn) 
;;kjin   ���д�euc-cn��Ϊ utf-8�������linux�ϴ���ҳ�������ĵ�emacs��ʾ��������                                                                                          
(set-selection-coding-system 'utf-8)
                                                                                               
(modify-coding-system-alist 'process "*" 'euc-cn)                                                                                   
(setq default-process-coding-system                                                                                                 
            '(euc-cn . euc-cn))                                                                                                     
(setq-default pathname-coding-system 'euc-cn)

;;solve dired show chinese issue
(prefer-coding-system 'gb18030)
(prefer-coding-system 'utf-8)
