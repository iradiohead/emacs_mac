;;;;;;;;;;;;;;;;;;;;; 
;;�����ͳ�ʼ��mew������ 
;;��emacs�շ��ʼ���Ĭ������Ϊgnus��Ϊmew 
;;;;;;;;;;;;;;;;;;;;; 
(autoload 'mew "mew" nil t) 
(autoload 'mew-send "mew" nil t) 
;;�趨ͼ�������ļ��У������w3m���ƣ��������ȷ��mew�޷����� 
(setq mew-icon-directory "/usr/share/mew") 
(if (boundp 'read-mail-command) 
    (setq read-mail-command 'mew)) 
(autoload 'mew-user-agent-compose "mew" nil t) 
(if (boundp 'mail-user-agent) 
    (setq mail-user-agent 'mew-user-agent)) 
(if (fboundp 'define-mail-user-agent) 
    (define-mail-user-agent 
       'mew-user-agent 
       'mew-user-agent-compose 
       'mew-draft-send-message 
       'mew-draft-kill 
       'mew-send-hook)) 


;;;;;;;;;;;;;;;;;;;;;; 
;;�ż��������� 
;;;;;;;;;;;;;;;;;;;;;; 
(setq mew-cite-fields '("From:" "Subject:" "Date:" "Message-ID:")) 
(setq mew-cite-format "From: %s\nSubject: %s\nDate: %s\nMessage-ID: %s\n\n") 
(setq mew-cite-prefix-function 'mew-cite-prefix-username) 


;;;;;;;;;;;;;;;;;;;;; 
;;��w3m����html��ʽ�ʼ� 
;;w3m��ʹ�ý����Ժ󽲵� 
;;;;;;;;;;;;;;;;;;;;; 
(setq mew-mime-multipart-alternative-list '("Text/Html" "Text/Plain" "*.")) 
(condition-case nil 
    (require 'mew-w3m) 
  (file-error nil)) 


;;;;;;;;;;;;;;;;; 
;;һЩ�������ã�δ���� 
;;;;;;;;;;;;;;;;; 
(setq mew-pop-size 0) 
(setq toolbar-mail-reader 'Mew) 
(set-default 'mew-decode-quoted 't)   
;;�趨����Կ�����ó���������õ���GnuPG 
(setq mew-prog-pgp "gpg") 


;;;;;;;;;;;; 
;;�趨�û���Ϣ 
;;;;;;;;;;;; 
(setq mew-name "Fu Xiaoqiang") 
(setq mew-user "Strength") 


;;;;;;;;;;;; 
;;�趨smtp������ 
;;����ԭ�����ﲻ�г��ҵ���ȷEmail 
;;;;;;;;;;;; 
(setq mew-smtp-user "ywfxqywfxq@163.com") 
(setq mew-mail-domain "163.com") 
(setq mew-smtp-server "smtp.163.com") 
;;smtp��������֤�趨 
;;(setq mew-smtp-auth-list (quote ("CRAM-MD5" "LOGIN" "PLAIN"))) 
;;smtp������������֤���������趨 
(setq mew-smtp-auth-list nil) 


;;;;;;;;;;; 
;;�趨pop3������ 
;;����ԭ�����ﲻ�г��ҵ���ȷEmail 
;;;;;;;;;;; 
(setq mew-pop-server "pop.163.com") 
(setq mew-pop-user "ywfxqywfxq@163.com") 
(setq mew-pop-auth 'pass) ;;��֤��ʽ 
(setq mew-pop-delete nil) ;;���ʼ����ڷ������� 

;;;;;;;;;;;; 
;;�趨�����뱣��һ��ʱ�䣬Ĭ��20���� 
;;;;;;;;;;;; 
(setq mew-use-cached-passwd t) 
;;gnus���Խ�������������ļ�����ʼ���ʱ��Ͳ������������� 
;;������һ�£����������������Ӧ�������ƹ��ܣ���û�и�࣬���˰�æ�� 
;(setq mew-passwd-alist '(hvjhvjhvj) 

;;;;;;;;;;;;;;;;;;;;; 
;;�������� 
;;�����֪������û����������һ��emacs��unicode֧�ֺ��˾Ϳ����� 
;;��Ȼ�������emacs-cvs 
;;;;;;;;;;;;;;;;;;;;; 
(when (boundp 'utf-translate-cjk) 
      (setq utf-translate-cjk t) 
      (custom-set-variables 
         '(utf-translate-cjk t))) 
(if (fboundp 'utf-translate-cjk-mode) 
    (utf-translate-cjk-mode 1)) 


(setq mew-config-alist
   '(("default"
     ("name"         .  "Fu Xiaoqiang")
     ("user"         .  "ywfxqywfxq")
     ("mail-domain"  .  "163.com") 
     ("pop-server"   .  "pop3.163.com")
     ("pop-port"     .  "110")
     ("pop-user"     .  "ywfxqywfxq") 
     ("pop-auth"     .  pass)
     ("smtp-server"  .  "smtp.163.com")
     ("smtp-port"    .  "25")
     ("smtp-user"    .  "ywfxqywfxq")
     ("smtp-auth-list"  .  ("PLAIN" "LOGIN" "CRAM-MD5")))))



