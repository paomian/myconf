;;yasnippet
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-0.8.0")
(require 'yasnippet)
(yas--initialize)
(yas/load-directory "~/.emacs.d/elpa/yasnippet-0.8.0/snippets")
;;clojure
(add-to-list 'load-path "~/.emacs.d/elpa/clojure-mode-2.1.0")
(require 'clojure-mode)
;;popup
(add-to-list 'load-path "~/.emacs.d/elpa/popup-0.5")
(require 'popup)
;;auto-complete
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.4")
(require 'auto-complete)
;;paredit
(add-to-list 'load-path "~/.emacs.d/elpa/paredit-22")
(require 'paredit)
;;slime
(add-to-list 'load-path "~/.emacs.d/elpa/slime-20100404.1")
(require 'slime)
;;zencoding
(add-to-list 'load-path "~/.emacs.d/elpa/zencoding-mode-0.5.1")
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode) ;;Auto-start on any markup modes
;;go
(add-to-list 'load-path "~/.emacs.d/elpa/go-mode-12869")
(require 'go-mode)
;;erlang
(add-to-list 'load-path "~/.emacs.d/elpa/erlang")
(setq erlang-root-dir "/usr/lib64/erlang")
(setq exec-path (cons "/usr/lib64/erlang/bin" exec-path))
(require 'erlang-start)
;;python-mode
(add-to-list 'load-path "~/.emacs.d/elpa/python-mode-6.0.10")
(setq py-install-directory "/usr/lib/python2.7")
(require 'python-mode)
;;python-django
(add-to-list 'load-path "~/.emacs.d/elpa/python-django-0.1")
(require 'python-django)
;;ruby
(add-to-list 'load-path "~/.emacs.d/elpa/ruby-mode-1.1")
(require 'ruby-mode)
;;prolog
(add-to-list 'load-path "~/.emacs.d/elpa/prolog-1.22")
(require 'prolog)
;;语法高亮
(global-font-lock-mode t)
;;默认路径
(setq default-directory "~/work/")
;;my
(setq user-full-name "Paomian]")
(setq user-mail-address "tanglnan1994@gmail.com")
;;不生成临时文件
(setq-default make-backup-files nil)
;;显示时间
;;------------显示时间设置------------------------------
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上
(setq display-time-24hr-format t);;时间使用24小时制
(setq display-time-day-and-date t);;时间显示包括日期和具体时间
(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置
(setq display-time-interval 10);;时间的变化频率，单位多少来着？
;;显示行号
(global-linum-mode t)
;;匹配括号
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
;;取消工具栏
(tool-bar-mode 0)
;;取消滚动条
(scroll-bar-mode 0)
;;自动补全括号
;;系统本身内置的智能自动补全括号
(electric-pair-mode t)
;;窗口设置
(set-foreground-color "Wheat")
(set-background-color "Black")
(set-cursor-color "Orchid")
(set-mouse-color "Orchid")
;;关闭emacs启动时的画面
(setq inhibit-startup-message t)
;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)
;; 回车缩进
;;(global-set-key "\C-m" 'newline-and-indent)
;;(global-set-key (kbd "C-<return>") 'newline)
;; 实现全屏效果，快捷键为f11
(global-set-key [f11] 'my-fullscreen) 
(defun my-fullscreen ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0))
  )
;; 默认显示 80列就换行 
(setq default-indent-new-line 80)
;; 指针颜色设置为白色
(set-cursor-color "white")
;; 鼠标颜色设置为白色
(set-mouse-color "white")
;;缩进风格
(setq-default indent-tabs-mode  nil)
(setq tab-width 4
      c-basic-offset 4)
(setq auto-mode-alist
      ;; 将文件模式和文件后缀关联起来
      (append '(("\\.py\\'" . python-mode)
                ("\\.rb\\'" . ruby-mode)
                ("\\.go\\'" . go-mode))
              auto-mode-alist))
