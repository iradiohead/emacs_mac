;;����Ҫ��ʱ����������elisp 
(autoload 'dictionary-search "dictionary" 
  "Ask for a word and search it in all dictionaries" t) 
(autoload 'dictionary-match-words "dictionary" 
  "Ask for a word and search all matching words in the dictionaries" t) 
(autoload 'dictionary-lookup-definition "dictionary" 
  "Unconditionally lookup the word at point." t) 
(autoload 'dictionary "dictionary" 
  "Create a new dictionary buffer" t) 
(autoload 'dictionary-mouse-popup-matching-words "dictionary" 
  "Display entries matching the word at the cursor" t) 
(autoload 'dictionary-popup-matching-words "dictionary" 
  "Display entries matching the word at the point" t) 
(autoload 'dictionary-tooltip-mode "dictionary" 
  "Display tooltips for the current word" t) 
(autoload 'global-dictionary-tooltip-mode "dictionary" 
  "Enable/disable dictionary-tooltip-mode for all buffers" t) 

;;�趨�ֵ������Ϊ���ط����� 
;;������ڰ��µĿ���ϣ������趨Ϊ[url]http://www.dict.org[/url] 
;;������ھ������ϣ�����������ĳ̨������dictd���������㽫�������趨Ϊ����IP���ɡ� 
;(setq dictionary-server "localhost") 
(setq dictionary-server "http://www.dict.org") 
;;���ֵ���ʾģʽ�У�ʹ��wordnet�ֵ����ݿ���ΪĬ���ֵ����ݿ� 
;;��Ȼ������޸ģ�ȡ������dictd����������ֵ����ݿ� 
(setq dictionary-tooltip-dictionary "wn") 

;; �趨���Ĵʵ�Ľ��� 
;; ��qtjava�ָ�֪��лл�� 
(setq dictionary-coding-systems-for-dictionaries '(("cdict" . gb2312) 
                                                   ("xdict" . gbk2312) 
                                                   ("stardic" . gb2312))) 

(setq-default ispell-program-name "aspell")
(setq-default ispell-extra-args '("--reverse"))

(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(autoload 'flyspell-delay-command "flyspell" "Delay on command." t)
(autoload 'tex-mode-flyspell-verify "flyspell" "" t) 

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(setq flyspell-sort-corrections nil)
(setq flyspell-doublon-as-error-flag nil)

;;Setting for aspell
;;(setq-default ispell-program-name "flypell")
(setq-default ispell-program-name "aspell")
(setq-default ispell-local-dictionary "american")
(global-set-key (kbd "") 'ispell-complete-word)
