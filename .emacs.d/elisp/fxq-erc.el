;;����erc.el�� 
;;��������ļ���ò�Ҫ���룬�������涨���erc-sir�Ⱥ��������� 
;;�������Ӧ�ÿ����޸ģ����Ժ����� 
(require 'erc) 
;;�趨һ���йط�������IRC�������ĺ��� 
(defmacro de-erc-connect (command server port nick) 
  "Create interactive command `command', for connecting to an IRC server. The 
command uses interactive mode if passed an argument." 
  (fset command 
    `(lambda (arg) 
       (interactive "p") 
       (if (not (= 1 arg)) 
           (erc-select ,server ,port ,nick) 
         (erc ,server ,port ,nick ,erc-user-full-name t))))) 
;;��������Sir��IRC����Ҽǵó�ȥ 
(de-erc-connect erc-sir "linuxsir.org" 6667 "hvj") 
;;����linuxfans��IRC����Щʱ���� 
(de-erc-connect erc-fans "irc.linuxfans.org" 6667 "hvj") 
;;�����������ھ��������IRC 
(de-erc-connect erc-me "192.168.1.191" 6667 "hvj") 
(de-erc-connect erc-van "192.168.1.14" 6667 "hvj") 

;;�趨һЩ�йر��� 
(custom-set-variables 
;;����linuxsir��IRC���Զ�����#javaleeƵ�������ǵĹ�ˮƵ�������������� 
'(erc-autojoin-channels-alist '(("linuxsir.org" "#javalee") 
;;����linuxfans��IRC���Զ�����#linuxfans��#linuxerƵ��������linuxfans��IRC�Ѿ��Զ����������� 
                 ("irc.linuxfans.org" "#linuxfans" "#linuxer"))) 
;;��Ĭ�������IRC���ҵ�ID��hvj 
'(erc-email-userid "hvj") 
;;�趨����ʱ���п������Ķ� 
'(erc-fill-column 67) 
;;ʲô���ţ� 
'(erc-fill-prefix "      ") 
;;���ε���һЩ���� 
'(erc-hide-list '("JOIN" "PART" "QUIT")) 
;;Ĭ�ϵ��ǳƣ����userid��ʲô���𣿻�����������Ҹ����ҡ� 
'(erc-nick "hvj") 
;;Ĭ�ϵĶ˿�6667 
'(erc-port 6667) 
;;��¼��ЩIRC���������¼ 
;;����linuxfans�Ѿ�ע�����ҵ�ID���Ҳ��������¼������һ���Ӻ��Ҹ��� 
;;�´��ҽ��ĸ�������� 
'(erc-prompt-for-password nil) 
;;�й��˳�IRC�ģ�ʲô��˼���ţ� 
'(erc-quit-reason 'erc-quit-reason-zippy) 
;;������IRC�����¼ 
;;��ҿ������ң��ǿ��Ա���ģ�ֻҪ��Ը�� 
'(erc-save-buffer-on-part nil)) 

;;�趨ercģʽ��һ���������ã����������ڵ�ǰ���ڵ����һ�� 
(add-hook 'erc-mode-hook 'erc-add-scroll-to-bottom) 

;;erc���ĵĹؼ����ã����һ����Ҫ��������ֻ�ܿ����ģ������ܡ�˵������ 
(setq erc-encoding-default 'chinese-iso-8bit) 


