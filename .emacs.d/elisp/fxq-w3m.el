;;�����ͳ�ʼ��w3m.el 
(autoload 'w3m "w3m" "Interface for w3m on Emacs." t) 
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t) 
(autoload 'w3m-search "w3m-search" "Search words using emacs-w3m." t) 
;;ʹ��mule-ucs��ֻ�����㰲װmule-ucs elisp��չ��ʱ��������ã����Կ�Unicode�������ҳ 
;;(setq w3m-use-mule-ucs t) 
;;ʹ�ù��߰� 
(setq w3m-use-toolbar t) 
;;����cookie 
(setq w3m-use-cookies t) 
;;�趨w3mͼ�������ļ��У�gentoo��Ĭ�ϰ�װλ�þ������£���ҿ��Ը����Լ��������һ�� 
(setq w3m-icon-directory "/usr/share/emacs-w3m/emacs-w3m/icon") 
;;�趨w3m���еĲ������ֱ�Ϊʹ��cookie��ʹ�ÿ�� 
(setq w3m-command-arguments '("-cookie" "-F")) 
;;��w3m�����ҳʱҲ��ʾͼƬ 
(setq w3m-display-inline-image t) 
;;�趨w3m���������ã��Ա㷽��ʹ�ú��Ķ����� 
;;��ǩ�������� 
(setq w3m-bookmark-file-coding-system 'chinese-iso-8bit) 
;;w3m�Ľ������ã�������ö��У���Ҳ������� 
(setq w3m-coding-system 'chinese-iso-8bit) 
(setq w3m-default-coding-system 'chinese-iso-8bit) 
(setq w3m-file-coding-system 'chinese-iso-8bit) 
(setq w3m-file-name-coding-system 'chinese-iso-8bit) 
(setq w3m-terminal-coding-system 'chinese-iso-8bit) 
(setq w3m-input-coding-system 'chinese-iso-8bit) 
(setq w3m-output-coding-system 'chinese-iso-8bit) 
;;w3m��ʹ��tab�ģ��趨Tab�Ŀ�� 
(setq w3m-tab-width 8) 
;;�趨w3m����ҳ��ͬmozilla��Ĭ����ҳһ�� 
(setq w3m-home-page "file://home/hans/.w3m/bookmark.html") 
;;���¶��������� 
(setq w3m-view-this-url-new-session-in-background t) 
(add-hook 'w3m-fontify-after-hook 'remove-w3m-output-garbages) 
;;���������������������� 
(defun remove-w3m-output-garbages () 
  (interactive) 
  (let ((buffer-read-only)) 
    (setf (point) (point-min)) 
    (while (re-search-forward "[\200-\240]" nil t) 
      (replace-match " ")) 
    (set-buffer-multibyte t)) 
  (set-buffer-modified-p nil)) 



