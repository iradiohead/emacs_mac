;;kjin comment it as .emacs already add this agenda conf
;; Set org-agenda-files for Org-Mode
;;(setq org-agenda-files (list "~/Dropbox/emacs_docs/tutorial_mine/"
;;                             "~/Dropbox/emacs_docs/"))

;;kjin add for shutcut
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;;������������
;;���������ڵط��ľ�γ�ȣ�calendar���и�����������ʳ��Ԥ�⣬����ľ�γ������ϵ�ġ�
(setq calendar-latitude +30.0)
(setq calendar-longitude +120.2)
;;/*time display                          */
(set-time-zone-rule "GMT-8")
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;;�ҵ����ڵغ���.
(setq calendar-location-name "Hangzhou")
;; ���� calendar ����ʾ
(setq calendar-remove-frame-by-deleting t)
(setq calendar-week-start-day 1)            ; ��������һΪÿ�ܵĵ�һ��
(setq mark-holidays-in-calendar nil)        ; Ϊ��ͻ����diary�����ڣ�calendar�ϲ���ǽ���

;;���պ�������������
;;�Ҳ�������ͽ�Ľ��ա�ϣ�����˵Ľ��պ���˹���̵Ľ��ա�
;;�����������ߣ�������ϲ����
(setq christian-holidays nil)
(setq hebrew-holidays nil)
(setq islamic-holidays nil)
;;�趨һЩ�Զ�������պͽ���
;;������Щũ��������Ҫÿ����������޸�
;;��Щ��ϧ��û���й���ͳũ����˭��д����չelisp��Ūһ��
(setq general-holidays '((holiday-fixed 1 1 "Ԫ��")
                         (holiday-fixed 2 14 "���˽�")
                         (holiday-fixed 3 14 "��ɫ���˽�")
			             (holiday-fixed 3 8 "��Ů��")
				         (holiday-fixed 4 1 "���˽�")
					     (holiday-fixed 5 1 "�Ͷ���")
                         (holiday-float 5 0 2 "ĸ�׽�")
                         (holiday-fixed 6 1 "��ͯ��")
                         (holiday-float 6 0 3 "���׽�")
                         (holiday-fixed 7 1 "������")
                         (holiday-fixed 8 1 "������")
                         (holiday-fixed 9 10 "��ʦ��")
					     (holiday-fixed 10 1 "�����")
					     (holiday-fixed 12 25 "ʥ����")))
;;					     (holiday-fixed 2 5 "Ԫ����")
;;     				     (holiday-fixed 4 4 "������")
;;					     (holiday-fixed 4 21 "���")
;;					     (holiday-fixed 6 22 "�����")
;;					     (holiday-fixed 9 28 "�����")

;;Diary

(setq diary-file "~/diary/diary")
(setq diary-mail-addr "xiaoqiang.fu@gmail.com")

;;������һЩ����
;;�������ռ���
(setq mark-diary-entries-in-calendar t)
;;todoģʽ��������ĳ��ʱ����������һ�����飬������ܿ���ͨ��Լ��������ʵ�֡���.emacs�м���
(setq appt-issue-message nil)
;;��������ͻ����ǽ��պ�����
(setq mark-holidays-in-calendar t)
;;��calendar�Զ��򿪽��պ������б�
(setq view-calendar-holidays-initially t)

;;�����������������Ϊ�й��꣬����Ĭ�ϵ�����Ӣ��д�ġ�
;;��������ڽ����б�Ĵ��������ܿ����������Ĵ�������д��
;;Thursday, January 22, 2004: Chinese New Year (��-��)
(setq chinese-calendar-celestial-stem
["��" "��" "��" "��" "��" "��" "��" "��" "��" "��"])
(setq chinese-calendar-terrestrial-branch
["��" "��" "��" "î" "��" "��" "��" "δ" "��" "��" "��" "��"])
