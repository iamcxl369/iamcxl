;; 加载color-theme配置文件的路径
;;(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0")
;;(require 'color-theme)
;;(require 'color-theme)
;;(color-theme-initialize)

;; Load the darcula theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/theme")
(load-theme 'darcula t)

;; 下面color-theme中的配色方案任选其一
;;(color-theme-taming-mr-arneson)
;;(color-theme-pok-wog)
;;(color-theme-subtle-hacker)
;;(color-theme-sitaramv-solaris)
;;(color-theme-shaman)
;;(color-theme-ryerson)
;;(color-theme-robin-hood)
;;(color-theme-gnome2)
;;(color-theme-deep-blue)
;;(color-theme-classic)
;;(color-theme-bharadwaj-slate)

;; https://github.com/jaypei/emacs-neotree
;; Disable the Ctrl+Space in emacs activate mark
;; M-@ activate mark too
(global-set-key (kbd "C-SPC") nil)
(global-set-key (kbd "S-SPC") 'set-mark-command)

;; ------显示行号------
(global-linum-mode t)
;; ------End 显示行号--------

;;去掉Emacs和gnus启动时的引导界面
;;想看引导页C-x t就可以打开
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

;;启动Emacs自动设置为两个窗口(上下各一个)
;;(split-window-vertically)

;;将当前窗口分割为上下两个，并切换到另外一个 buffer
(defun split-window-new-buffer()
  (interactive)
  (split-window-below)
  (call-interactively 'switch-to-buffer))

;;;使用 Shift+方向键 的方式来进行窗口切换
(windmove-default-keybindings)
;;;windmove 在边缘的窗口也能正常运作
(setq windmove-wrap-around t)

;;循环切换buffer,C-x C-b显示buffer列表
(global-set-key "\M-p"  'bs-cycle-previous)
(global-set-key "\M-n"  'bs-cycle-next)

;;;不是生成临时文件
(setq make-backup-files nil)
;;;设定不产生备份文件
(setq-default make-backup-files nil)

;;;关闭自动保存模式
(setq auto-save-mode nil)
;;;不生成 #filename# 临时文件
(setq auto-save-default nil)

;;;下载package.el并且放到插件目录并加载
;;;http://bzr.savannah.gnu.org/lh/emacs/trunk/annotate/head:/lisp/emacs-lisp/package.el
;;(add-to-list 'load-path "~/.emacs.d/plugins/package")
;;(require 'package)

;;;添加melpa仓库
;;;仓库用法: 
;;;M-x package-list-packages, select neotree <neotree是插件名>
;;(add-to-list 'package-archives '("melpa"."http://melpa.org/packages/"))

;;添加neotree目录结构显示
;;<F8>打开
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;;添加php编辑模式
;;(add-to-list 'load-path "~/.emacs.d/plugins/php-mode")
;;(require 'php-mode)
;;(add-to-list 'load-path "~/.emacs.d/plugins/php-mode/skeleton")
;;(eval-after-load 'php-mode'(require 'php-ext))

;;;支持python的编辑模式
;;;必须放在auto-complete前面,因为auto-complete要用到这个
;;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
;;(require 'yasnippet)
;;(setq yas/prompt-functions 
;;   '(yas/dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))
;;(yas/global-mode 1)
;;(yas/minor-mode-on) ; 以minor mode打开，这样才能配合主mode使用

;;;自动补全要用否则自动补全报错
;;(add-to-list 'load-path "~/.emacs.d/plugins/pos-tip")
;;(add-to-list 'load-path "~/.emacs.d/plugins/fuzzy-el")
;;(add-to-list 'load-path "~/.emacs.d/plugins/popup-el")

;;;自动补全插件
;;(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/dict")
;;(ac-config-default)
;;(setq ac-use-quick-help nil)
;;(setq ac-auto-start 4) ;; 输入4个字符才开始补全
;;(global-set-key "\M-/" 'auto-complete)  ;; 补全的快捷键，用于需要提前补全
;; Show menu 0.8 second later
;;(setq ac-auto-show-menu 0.8)
;; 选择菜单项的快捷键
;;(setq ac-use-menu-map t)
;;(define-key ac-menu-map "\C-n" 'ac-next)
;;(define-key ac-menu-map "\C-p" 'ac-previous)
;; menu设置为12 lines
;;(setq ac-menu-height 12)
