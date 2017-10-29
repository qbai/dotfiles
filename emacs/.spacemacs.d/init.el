;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.


(defun dotspacemacs/layers ()
  "Configuration Layers declaration.You should not put any user code in this function besides modifying the variable values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
      ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   ;;dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers/")
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
      themes-megapack
      ;;colors
      auto-completion
      better-defaults
      emacs-lisp
      (git :variables
           git-gutter-use-fringe t)
      ;;markdown
      ;;org
      shell
      syntax-checking
      ;;chinese
      spell-checking
      c-c++
     )
   ;; List of additional packages that will be installed wihout being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.This function is called at the very startup of Spacemacs initialization before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed.
   dotspacemacs-startup-banner 'nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         spacemacs-dark
                         spacemacs-light
                         solarized-dark
                         solarized-light
                         zenburn
                         leuven)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   ;;dotspacemacs-default-font '("input"
   dotspacemacs-default-font '("Source Code Pro"
                               :size 18
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f) is replaced.
   dotspacemacs-use-ido nil
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar nil
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode t
   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here
  )

(defun dotspacemacs/config ()
  "Configuration function.This function is called at the very end of Spacemacs initialization after layers configuration."

)

(defun dotspacemacs/user-init ()
"Initialization function for user code.It is called immediately after`dotspacemacs/init', before layer configuration executes.
  This function is mostly useful for variables that need to be set before packages are loaded. If you are unsure, you should try in setting them in`dotspacemacs/user-config' first."

 ;; zilongshanren
 ;; (setq configuration-layer--elpa-archives
 ;;       '(("melpa" . "elpa.zilongshanren.com/melpa/")
 ;;         ("org" . "elpa.zilongshanren.com/org/")
 ;;         ("gnu" . "elpa.zilongshanren.com/gnu/")))

  ;; tsinghua
  ;; (setq-default configuration-layer--elpa-archives
  ;;  '(("melpa-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
  ;;    ("gnu-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
  ;;         ("org-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

  ;; 163
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "http://mirrors.163.com/elpa/melpa/")
          ("org-cn"   . "http://mirrors.163.com/elpa/org/")
          ("gnu-cn"   . "http://mirrors.163.com/elpa/gnu/")))

  ;; emacs-china
 (setq configuration-layer--elpa-archives
       '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
         ("org-cn"   . "http://elpa.emacs-china.org/org/")
         ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))

 ;; (colors :variables
 ;;               colors-enable-rainbow-identifiers t)

 (setq-default
  ;;http://themegallery.robdor.com/
  ;;dotspacemacs-themes '(darktooth)
  dotspacemacs-themes '(monokai)
  dotspacemacs-fullscreen-use-non-native t
  dotspacemacs-maximized-at-startup t
  dotspacemacs-line-numbers nil
  ;; Location where to auto-save files. Possible values are `original' to
  ;; auto-save the file in-place, `cache' to auto-save the file to another
  ;; file stored in the cache directory and `nil' to disable auto-saving.
     ;; (default 'cache)
  dotspacemacs-auto-save-file-location 'original
  ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
  ;; derivatives. If set to `relative', also turns on relative line numbers.
  ;; (default nil)
  dotspacemacs-line-numbers 'nil
  powerline-default-separator 'arrow
  dotspacemacs-check-for-update t

 )

 ;; magit status
 (setq-default git-magit-status-fullscreen t)

)

(defun dotspacemacs/user-config ()
"Configuration function for user code.
This function is called at the very end of Spacemacs initialization after layers configuration. This is the place where most of your configurations should be done. Unless it is explicitly specified that a variable should be set before a package is loaded, you should place you code here."



;;;;;;;;;;;;;;;;;;;;;;;;;;;; keybindings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun my-kill-whole-line()
  (interactive)
  (beginning-of-line)
  (kill-line)
  )

(defun copy-lines(&optional arg)
  (interactive "p")
  (save-excursion
    (beginning-of-line)
    (set-mark (point))
    (next-line arg)
    (kill-ring-save (mark) (point))
    )
    )

(defun my-mark-line (&optional arg)
  (interactive "P")
  (if (region-active-p)
      (progn
        (goto-char (line-end-position 2)))
    (progn
      (back-to-indentation)
      (set-mark (point))
      (goto-char (line-end-position))))
  (setq arg (if arg (prefix-numeric-value arg)
              (if (< (mark) (point)) -1 1)))
  (if (and arg (> arg 1))
      (progn
                (goto-char (line-end-position arg)))))





(define-key key-translation-map (kbd "C-j") (kbd "C-J"))
(define-key key-translation-map (kbd "C-l") (kbd "C-L"))
(define-key key-translation-map (kbd "M-k") (kbd "M-K"))
(define-key key-translation-map (kbd "M-a") (kbd "M-A"))
(define-key key-translation-map (kbd "M-e") (kbd "M-E"))
(define-key key-translation-map (kbd "M-u") (kbd "M-U"))
(define-key key-translation-map (kbd "M-t") (kbd "M-T"))
(define-key key-translation-map (kbd "C-m") (kbd "C-M"))
(define-key key-translation-map (kbd "C-w") (kbd "M-w"))
(define-key key-translation-map (kbd "M-w") (kbd "C-w"))

;;  file
(global-set-key (kbd "M-f") 'spacemacs/helm-find-files)
;; save file
(global-set-key (kbd "C-s") 'save-buffer)
;; save all file
;;(global-set-key (kbd "C-M-s" 'save-some-buffers))
;; suspend emacs
;;(global-set-key (kbd "M-z" 'suspend-frame))



;; next/previous buffer
(global-set-key (kbd "C-b") 'next-buffer)
(global-set-key (kbd "M-b") 'previous-buffer)
;;(global-set-key (kbd "C-M-k") 'kill-this-buffer)
(global-set-key (kbd "C-M-k") 'ido-kill-buffer)



;; move-forward/back char
(global-set-key (kbd "C-j") 'forward-char)
(global-set-key (kbd "C-l") 'backward-char)
;; move-forward/back word
(global-set-key (kbd "M-j") 'forward-word)
(global-set-key (kbd "M-l") 'backward-word)
;; move cursor 5 lines up/down
(global-set-key (kbd "M-n") (kbd "C-u 5 C-n"))
(global-set-key (kbd "M-p") (kbd "C-u 5 C-p"))
;; move window 5 lines up/down
(global-set-key (kbd "C-M-n") (kbd "C-u 15 C-v"))
(global-set-key (kbd "C-M-p") (kbd "C-u 15 M-v"))
;;show in center
(global-set-key (kbd "C-M-l") 'recenter-top-bottom)
;; locate begin or end of file
(global-set-key (kbd "M-a") 'beginning-of-buffer)
(global-set-key (kbd "M-e") 'end-of-buffer)
;; page down
;;(global-set-key (kbd "M-u") 'scroll-up-command)


;;delete whole line
(global-set-key (kbd "M-k") 'my-kill-whole-line)
;; quick copy whole line
(global-set-key (kbd "C-M-w") 'copy-lines)
;; quick choose one line
(global-set-key (kbd "C-M-e") 'my-mark-line)
;; set mark tag
;;(global-set-key (kbd "M-SPC") 'set-mark-command)


;; search forword
(global-set-key (kbd "M-s") 'isearch-forward)
;; clear seach highlight result
(global-set-key (kbd "C-M-h") 'spacemacs/evil-search-clear-highlight)


;; open configure file
(global-set-key (kbd "C-c C-o") 'spacemacs/find-dotfile)
;; reload spacemacs configure file
(global-set-key (kbd "C-c C-e") 'dotspacemacs/sync-configuration-layers)
;; choose theme
(global-set-key (kbd "C-c C-t") 'helm-themes)

;;;;;;;;;;;;;;;;;;;;;;;;;;;; keybindings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;; configuration  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; charset utf-8
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)
(set-file-name-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-next-selection-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; replace yes with y
(fset 'yes-or-no-p 'y-or-n-p)
;; default tab char number
(setq default-tab-width 8)
;; not backup file
(setq-default make-backup-files nil)
;; auto save file
(setq auto-save-mode t)
;; enable emacs with other app to use clipboard
(setq x-select-enable-clipboard t)

(setq package-check-signature nil)
;; set default file open location
(setq default-directory "~/")
;; close tag asking for big file
(setq large-file-warning-threshold nil)
;; set nowrap
(setq truncate-lines t)
;; configure ediff
(setq ediff-split-window-function (quote split-window-horizontally))
;; magit directory
(setq magit-repository-directories '("~/project/unity"))
(global-git-commit-mode t)



;; tab width
(setq-default indent-tabs-mode nil)

(setq-default default-tab-width 8)

)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
