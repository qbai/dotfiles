;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ivy
     helm
     ;;colors
     theming
     ;;markdown
     ;;org
     ;; (chinese :packages youdao-dictionary fcitx
     ;;           :variables chinese-enable-fcitx nil
     ;;           chinese-enable-youdao-dict t)


     themes-megapack
     (auto-completion :variables
                      auto-completion-tab-key-behavior 'nil
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t)
     ;;tabnine
     better-defaults
     emacs-lisp
     git

     (shell :variables shell-default-shell 'ansi-term
            shell-default-term-shell "/usr/bin/zsh"
            shell-default-position 'bottom
            shell-default-full-span nil
            shell-default-height 100)
     syntax-checking
     ;;spell-checking

     ;;gtags
     (gtags :variables
            gtags-enabled-for '(c-mode c++-mode asm-mode)
            gtags-enable-by-default t)

     asm
     shell-scripts
     ;;sql
     (c-c++ :variables c-c++-default-mode-for-headers 'c++-mode)
     ;;(c-c++ :variables c-c++-enable-clang-support t)
     (python :variables
             python-enable-yapf-format-on-save t ;; when saving, yapf
             python-fill-column 80               ;; column 80
             python-sort-imports-on-save t)      ;; sort package when saving
     rust

     cscope
     ;;ycmd
     ;;semantic
     ;;debug
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(smart-mode-line smart-mode-line-powerline-theme smart-mode-line-atom-one-dark-theme helm-rg highlight-symbol good-scroll idle-highlight-mode deadgrep)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
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
   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 28
                               :weight bold
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  ;; emacs-china
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
          ("org-cn"   . "http://elpa.emacs-china.org/org/")
          ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))

  ;; 163
  ;;(setq configuration-layer--elpa-archives
  ;;      '(("melpa-cn" . "http://mirrors.163.com/elpa/melpa/")
  ;;       ("org-cn"   . "http://mirrors.163.com/elpa/org/")
  ;;        ("gnu-cn"   . "http://mirrors.163.com/elpa/gnu/")))

  ;; tsinghua
  ;; (setq-default configuration-layer--elpa-archives
  ;;               '(("melpa-cn" . "mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
  ;;                 ("gnu-cn" . "mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
  ;;                 ("org-cn" . "mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

  ;; zilongshanren
  ;; (setq configuration-layer--elpa-archives
  ;;        '(("melpa" . "elpa.zilongshanren.com/melpa/")
  ;;          ("org" . "elpa.zilongshanren.com/org/")
  ;;          ("gnu" . "elpa.zilongshanren.com/gnu/")))


  ;; (colors :variables
  ;;               colors-enable-rainbow-identifiers t)


  ;; set proxy if necessary
  (setq url-proxy-services
        '(("no_proxy" . "^\\(localhost\\|10.*\\)")
          ("http" . "127.0.0.1:8118")
          ("https" . "127.0.0.1:8118")
          ))

  ;; ss proxy. But it will cause anacond-mode failed.
  ;;(setq socks-server '("Default server" "127.0.0.1" 1080 5))

  ;;(setq byte-compile-warnings '(not obsolete))
  (setq warning-minimum-level :error)

  (setq purpose-mode nil)

  ;; (purpose-mode 1)
  ;;   (setq purpose-user-mode-purposes
  ;;         '((term-mode . terminal)
  ;;           (shell-mode . terminal)
  ;;           (ansi-term-mode . terminal)
  ;;           (tuareg-mode . coding)
  ;;           (compilation-mode . messages)))
  ;; (purpose-compile-user-configuration)

  (setq-default
   ;;http://themegallery.robdor.com/
   ;;dotspacemacs-themes '(darktooth)
   dotspacemacs-themes '(monokai)
   dotspacemacs-fullscreen-use-non-native t
   dotspacemacs-maximized-at-startup t
   dotspacemacs-line-numbers nil
   dotspacemacs-large-file-size 10

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location nil
   ;;dotspacemacs-auto-save-file-location 'original

   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   powerline-default-separator 'arrow
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-https nil
   dotspacemacs-startup-banner nil

   ;; magit status
   git-magit-status-fullscreen t
   )

  ;; configure background and highligh same with sublime text
  ;; (custom-set-variables '(spacemacs-theme-custom-colors
  ;;                         '((bg1 . "#272822"))))

  ;; (setq
  ;;  ;;monokai-foreground     "#ABB2BF"
  ;;  monokai-highlight      "#FFB269"
  ;;  ;;monokai-comments	 "#F8F8F0"
  ;;  monokai-background     "#272822"
  ;;  monokai-highlight-line "#3E3D32"
  ;;  )

  ;;(setq theming-modifications '((monokai (default :background "#272822" :highlight-line "#3E3D32"))))
  ;;(setq theming-modifications '((monokai (default :background "#272822"
  ;;                                        hl-line :background "#3E3D32"))))


  ;; https://github.com/syl20bnr/spacemacs/issues/2705
  ;; accelerate startup; by zilongshanren
  (setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."





  ;; Setting Chinese Font
  ;; (when (and (spacemacs/system-is-mswindows) window-system)
  ;;   (setq ispell-program-name "aspell")
  ;;   (setq w32-pass-alt-to-system nil)
  ;;   (setq w32-apps-modifier 'super)
  ;;   (dolist (charset '(kana han symbol cjk-misc bopomofo))
  ;;     (set-fontset-font (frame-parameter nil 'font)
  ;;                       charset
  ;;                       (font-spec :family "Microsoft Yahei" :size 14))))



  ;;(setq split-width-threshold 120)
  ;; change vertical split to horizotal, or vice versa
  (defun toggle-window-split ()
    (interactive)
    (if (= (count-windows) 2)
        (let* ((this-win-buffer (window-buffer))
               (next-win-buffer (window-buffer (next-window)))
               (this-win-edges (window-edges (selected-window)))
               (next-win-edges (window-edges (next-window)))
               (this-win-2nd (not (and (<= (car this-win-edges)
                                           (car next-win-edges))
                                       (<= (cadr this-win-edges)
                                           (cadr next-win-edges)))))
               (splitter
                (if (= (car this-win-edges)
                       (car (window-edges (next-window))))
                    'split-window-horizontally
                  'split-window-vertically)))
          (delete-other-windows)
          (let ((first-win (selected-window)))
            (funcall splitter)
            (if this-win-2nd (other-window 1))
            (set-window-buffer (selected-window) this-win-buffer)
            (set-window-buffer (next-window) next-win-buffer)
            (select-window first-win)
            (if this-win-2nd (other-window 1))))))

  (global-set-key (kbd "C-x 5") 'toggle-window-split)


  ;;(linum-relative-on)
                                        ;(use-package linum-relative
                                        ;  :ensure t
                                        ;  :config
                                        ;  (linum-relative-toggle))
                                        ;(with-eval-after-load 'linum
                                        ;  (linum-relative-toggle))
  (global-display-line-numbers-mode 1)
  (setq display-line-numbers-type 'relative)

  (global-hungry-delete-mode t)

  (setq custom-safe-themes t)

  ;; setting minor mode
  ;; (spacemacs|add-company-backends :modes text-mode)
  ;; (spacemacs|diminish helm-gtags-mode)
  ;; (spacemacs|diminish ggtags-mode)
  ;; (spacemacs|diminish which-key-mode)
  ;; (spacemacs|diminish spacemacs-whitespace-cleanup-mode)
  ;; (spacemacs|diminish counsel-mode)

  ;; setting backtab to remove 4 spaces
  ;; (global-set-key (kbd "<backtab>") 'un-indent-by-removing-4-spaces)
  ;; (defun un-indent-by-removing-4-spaces ()
  ;;   "remove 4 spaces from beginning of of line"
  ;;   (interactive)
  ;;   (save-excursion
  ;;     (save-match-data
  ;;       (beginning-of-line)
  ;;       ;; get rid of tabs at beginning of line
  ;;       (when (looking-at "^\\s-+")
  ;;         (untabify (match-beginning 0) (match-end 0)))
  ;;       (when (looking-at (concat "^" (make-string tab-width ?\ )))
  ;;         (replace-match "")))))


  ;; C-f5 setting compile; f5 save all buffer and compile current buffer
  ;; (defun du-onekey-compile ()
  ;;   "Save buffers and start compile"
  ;;   (interactive)
  ;;   (save-some-buffers t)
  ;;   (switch-to-buffer-other-window "*compilation*")
  ;;   (compile compile-command))
  ;;   (global-set-key [C-f5] 'compile)
  ;;   (global-set-key [f5] 'du-onekey-compile)


  ;; use many window mode to dbug
  ;; customize the window style
  ;; (defadvice gdb-setup-windows (after my-setup-gdb-windows
  ;;                                     activate)
  ;;   "my gdb UI"
  ;;   (gdb-get-buffer-create 'gdb-stack-buffer)
  ;;   (set-window-dedicated-p (selected-window) nil)
  ;;   (switch-to-buffer gud-comint-buffer)
  ;;   (delete-other-windows)
  ;;   (let ((win0 (selected-window))
  ;;         (win1 (split-window nil nil 'left))
  ;;                                         ;code and output
  ;;                         (win2 (split-window-below (/ (*
  ;;                                     (window-height) 2) 3)))
  ;;                                         ;stack
  ;;                         )
  ;;     (select-window win2)
  ;;     (gdb-set-window-buffer (gdb-stack-buffer-name))
  ;;     (select-window win1)
  ;;     (set-window-buffer
  ;;      win1
  ;;      (if gud-last-last-frame
  ;;          (gud-find-file (car gud-last-last-frame))
  ;;        (if gdb-main-file
  ;;            (gud-find-file gdb-main-file)
  ;;          ;; Put buffer list in window if we
  ;;          ;; can't find a source file.
  ;;          (list-buffers-noselect))))
  ;;     (setq gdb-source-window (selected-window))
  ;;         (let ((win3 (split-window nil (/ (* (window-height)
  ;;                                             3) 4)))) ;io
  ;;                 (gdb-set-window-buffer
  ;;                                     (gdb-get-buffer-create
  ;;                                     'gdb-inferior-io) nil
  ;;                                     win3))
  ;;         (select-window win0)
  ;;         ))




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

  (defun nuke-all-buffers ()
    (interactive)
    (mapcar 'kill-buffer (buffer-list))
    (delete-other-windows))

  ;; Shift the selected region right if distance is postive, left if
  ;; negative
  (defun shift-region (distance)
    (let ((mark (mark)))
      (save-excursion
        (indent-rigidly (region-beginning) (region-end) distance)
        (push-mark mark t t)
        ;; Tell the command loop not to deactivate the mark
        ;; for transient mark mode
        (setq deactivate-mark nil))))

  (defun shift-right ()
    (interactive)
    (shift-region 2))

  (defun shift-left ()
    (interactive)
    (shift-region -2))

  (defun smooth-scroll (increment)
    (scroll-up increment) (sit-for 0.05)
    (scroll-up increment) (sit-for 0.02)
    (scroll-up increment) (sit-for 0.02)
    (scroll-up increment) (sit-for 0.05)
    (scroll-up increment) (sit-for 0.06)
    (scroll-up increment))

  (defun kill-all-buffer ()
    "Kill all buffer."
    (interactive)
    (dolist (buffer (buffer-list)) (kill-buffer buffer)))

  ;; (defun occur-selection ()
  ;;   (interactive)
  ;;   (when (region-active-p)
  ;;     (let (deactivate-mark)
  ;;       (occur (regexp-quote (buffer-substring (region-beginning) (region-end)))))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; keybindings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; key remap
  (define-key key-translation-map (kbd "C-j") (kbd "C-J"))
  (define-key key-translation-map (kbd "C-l") (kbd "C-L"))
  (define-key key-translation-map (kbd "M-k") (kbd "M-K"))
  (define-key key-translation-map (kbd "M-a") (kbd "M-A"))
  (define-key key-translation-map (kbd "M-e") (kbd "M-E"))
  (define-key key-translation-map (kbd "M-t") (kbd "M-T"))
  (define-key key-translation-map (kbd "C-m") (kbd "C-M"))
  (define-key key-translation-map (kbd "C-f") (kbd "C-F"))
  (define-key key-translation-map (kbd "C-o") (kbd "C-O"))

  ;; key exchange
  (define-key key-translation-map (kbd "C-w") (kbd "M-w"))
  (define-key key-translation-map (kbd "M-w") (kbd "C-w"))
  ;;define-key key-translation-map (kbd "ESC") (kbd "C-g"))

  ;; key unset
  (global-unset-key (kbd "C-x C-b"))
  (global-unset-key (kbd "C-x b"))
  (global-unset-key (kbd "M-f"))
  (global-unset-key (kbd "M-b"))
  (define-key winum-keymap (kbd "M-1") nil)
  (define-key winum-keymap (kbd "M-2") nil)

  ;;  FILE
  ;; open & new file
  ;;(global-set-key (kbd "C-f") 'counsel-find-file)
  (global-set-key (kbd "C-M-f") 'spacemacs/helm-find-files)
  ;; save file
  (global-set-key (kbd "C-s") 'save-buffer)
  ;; save all file
  ;;(global-set-key (kbd "C-M-s" 'save-some-buffers))


  ;; BUFFER
  ;;(global-set-key (kbd "C-x C-b") 'helm-buffers-list)   ;;same as C-x b
  ;; next/previous buffer
  ;;(global-set-key (kbd "C-b") 'next-buffer)
  ;;(global-set-key (kbd "M-b") 'previous-buffer)
  (global-set-key (kbd "C-b") 'helm-buffers-list)
  (global-set-key (kbd "M-1") 'previous-buffer)
  (global-set-key (kbd "M-2") 'next-buffer)

  (global-set-key (kbd "C-M-k") 'ido-kill-buffer)
  ;; kill all buffers
;;;(global-set-key (kbd "C-M-a-k") 'nuke-all-buffers)
  ;;(global-set-key (kbd "C-c k") 'kill-some-buffers)
  (global-set-key (kbd "C-c k") 'kill-all-buffer)


  ;; MOVING
  ;; move-forward/back char
  (global-set-key (kbd "C-j") 'forward-char)
  (global-set-key (kbd "C-l") 'backward-char)
  ;; move-forward/back word
  (global-set-key (kbd "M-j") 'forward-word)
  (global-set-key (kbd "M-l") 'backward-word)
  ;; move cursor 5 lines up/down
  ;;(global-set-key (kbd "C-M-n") (lambda () (interactive) (next-line 5)))
  ;;(global-set-key (kbd "C-M-p") (lambda () (interactive) (previous-line 5)))
  (global-set-key (kbd "M-n") (kbd "C-u 5 C-n"))
  (global-set-key (kbd "M-p") (kbd "C-u 5 C-p"))
  ;; move window 5 lines up/down
  (global-set-key (kbd "C-M-n") (kbd "C-u 15 C-v"))
  (global-set-key (kbd "C-M-p") (kbd "C-u 15 M-v"))
  ;;show in center
  (global-set-key (kbd "C-M-l") 'recenter-top-bottom)
  ;; locate begin or end of file
  (define-key key-translation-map (kbd "M-a") (kbd "M-<"))
  (define-key key-translation-map (kbd "M-e") (kbd "M->"))
  ;;(global-set-key (kbd "M-a") 'beginning-of-buffer)
  ;;(global-set-key (kbd "M-e") 'end-of-buffer)
  ;; quickly move to char
  (global-set-key (kbd "C-o") 'evil-avy-goto-char)
  ;; quickly move to line
  (global-set-key (kbd "C-c g") 'evil-avy-goto-line)
  ;; quickly move region left
  (global-set-key (kbd "C-c i") (kbd "C-u -4 C-x TAB"))
  ;;(global-set-key (kbd "C-c C-m") 'shift-left)
  ;; quickly move region right
  (global-set-key (kbd "C-c u") (kbd "C-u 4 C-x TAB"))
  ;; page down
  ;;(global-set-key (kbd "C-u") 'scroll-up-command)
  ;; page up
  ;;(global-set-key (kbd "M-u") 'scroll-down-command)


  ;; EDIT
  ;;delete whole line
  (global-set-key (kbd "M-k") 'my-kill-whole-line)
  ;; quick copy whole line
  (global-set-key (kbd "C-c l") 'copy-lines)
  ;; quick choose one line
  (global-set-key (kbd "C-c m") 'my-mark-line)
  ;; quick choose whole buffer
  (global-set-key (kbd "C-c n") 'mark-whole-buffer)
  ;; set mark tag
  ;;(global-set-key (kbd "M-SPC") 'set-mark-command)


  ;; SEARCH
  ;; search forword
  (global-set-key (kbd "M-s") 'isearch-forward)
  ;; clear seach highlight result
  (global-set-key (kbd "C-M-h") 'spacemacs/evil-search-clear-highlight)


  ;; MOUSE
  ;(global-set-key [(mouse-5)] '(lambda () (interactive) (smooth-scroll 1)))
  ;(global-set-key [(mouse-4)] '(lambda () (interactive) (smooth-scroll -1)))
  ;(global-set-key [mouse-4] 'good-scroll-down)
  ;(global-set-key [mouse-5] 'good-scroll-up)
  ;wheel-up
  (global-set-key [mouse-4] (lambda () (interactive) (scroll-down-line 2)))
  ;wheel-down
  (global-set-key [mouse-5] (lambda () (interactive) (scroll-up-line 2)))
  (global-set-key [mouse-3] 'yank)
  (pixel-scroll-mode 1)  ;; Emacs 29+
  ;;(good-scroll-mode 1)   ;; install package good-scroll


  ;; OTHER CONFIG
  ;; open spacemacs configure file
  (global-set-key (kbd "C-c C-f") 'spacemacs/find-dotfile)
  ;; reload spacemacs configure file
  (global-set-key (kbd "C-c C-r") 'dotspacemacs/sync-configuration-layers)
  ;; choose theme
  ;;(global-set-key (kbd "C-c C-t") 'helm-themes)
  ;; bind escape to cancel
  ;;(global-set-key (kbd "<escape>") 'keyboard-escape-quit)


  ;; shell-pop for M-'
  (global-set-key (kbd "M-'") 'spacemacs/shell-pop-ansi-term)
  ;;(define-key key-translation-map (kbd "M-'") (kbd "M-m '"))

  ;;(global-set-key (kbd "C-c o") 'occur-selection)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; keybindings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; basic configuration  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

  ;; tab width
  ;;(global-unset-key "<tab>")
  ;;(unbind-key (kbd "<tab>") scroll-up-command)
  ;;(global-set-key (kbd "<tab>") 'indent-for-tab-command)
  ;;(define-key global-map (kbd "<tab>") 'indent-for-tab-command)
  ;; (setq indent-line-function 'insert-tab)
  (setq-default tab-always-indent 'complete)
  (setq-default indent-tabs-mode nil)
  ;; (setq-default tab-width 8)
  ;; (setq c-basic-offset 8)
  (setq-default tab-width 8)
  (setq c-basic-offset 8)
  ;;(global-set-key (kbd "TAB") 'self-insert-command)


  ;; line wrap
  (setq-default fill-column 80)
  ;; set nowrap
  (setq truncate-lines nil)

  ;; replace yes with y
  (fset 'yes-or-no-p 'y-or-n-p)

  ;; not backup file
  (setq-default make-backup-files nil)

  ;; auto save file
  (setq auto-save-mode nil)

  ;; enable emacs with other app to use clipboard
  (setq x-select-enable-clipboard t)
  ;;(setq select-enable-clipboard t)
  ;; use xsel to copy/paste in emacs-nox
  (unless window-system
    (when (getenv "DISPLAY")
      (defun xsel-cut-function (text &optional push)
        (with-temp-buffer
          (insert text)
          (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
      (defun xsel-paste-function()
        (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
          (unless (string= (car kill-ring) xsel-output)
            xsel-output )))
      (setq interprogram-cut-function 'xsel-cut-function)
      (setq interprogram-paste-function 'xsel-paste-function)
      ))


  ;;(setq package-check-signature nil)

  ;; set default file open location
  ;;(setq default-directory "~/")

  ;; close tag asking for big file
  (setq large-file-warning-threshold nil)

  ;; disable local variables list
  (setq enable-local-variables nil)

  ;; disable shell warning
  (setq exec-path-from-shell-check-startup-files nil)
  ;;(exec-path-from-shell-initialize)
  ;;(setq exec-path (append exec-path '("/usr/local/bin")))

  ;; disable lock file
  (setq create-lockfiles nil)
  ;; disable autosave file
  (setq auto-save-default nil)

  ;; config smart-mode-line theme :
  ;;             dark light powerline atom-one-dark
  ;;             light-powerline respectful
  (setq sml/theme 'dark)
  (sml/setup)
  (setq powerline-image-apple-rgb t)

  ;; auto-rereading files
  (global-auto-revert-mode t)

  ;; which-function-mode enable
  (which-function-mode t)

  ;; enable ruler for column 80
  ;;(display-fill-column-indicator-mode t)

  ;; enable auto-completion non-sensitive
  (setq ac-ignore-case t)

  ;; config selection background color
  (set-face-attribute 'region nil :background "#F75000")
  ;;(set-face-background 'hl-line "#4c4c4c")     ;;M-x customize-face

  ;; enable superword to whole selectioin with _ and -
  (global-superword-mode t)
  ;;(modify-syntax-entry ?_ "w")
  ;;(modify-syntax-entry ?_ "w" c-mode-syntax-table)


  ;; hightlight symbol config
  (global-set-key (kbd "C-c C-c") 'highlight-symbol-at-point)
  (global-set-key [f3] 'highlight-symbol-next)
  (global-set-key [f4] 'highlight-symbol-prev)
  (global-set-key (kbd "C-c c") 'highlight-symbol-remove-all)
  (add-hook 'c-mode-hook
            (lambda ()
              (define-key c-mode-map(kbd "C-c C-c") 'highlight-symbol-at-point)
              (define-key c-mode-map(kbd "C-c c") 'highlight-symbol-remove-all)))
  (add-to-list 'auto-mode-alist '("\\.h\\'" . c-mode))
  ;; (global-highlight-thing-mode t)
  ;; (setq highlight-thing-what-thing 'symbol)
  ;; (setq highlight-thing-delay-seconds 1.5)
  ;; (setq highlight-thing-limit-to-defun t)
  ;; (setq highlight-thing-case-sensitive-p t)
  ;;(global-auto-highlight-symbol-mode t)

                                        ;(defface hi-box
                                        ;  '((t (:box t )))
                                        ;  "Box face for hi-lock mode."
                                        ;  :group 'hi-lock-faces)
                                        ;(add-to-list 'hi-lock-faces "hi-box")

  (defvar hi-lock-faces nil "List of additional faces for hi-lock mode.")
  (defface hi-box
    '((t (:box t)))
    "Box face for hi-lock mode."
    :group 'hi-lock-faces)
  (add-to-list 'hi-lock-faces 'hi-box)



  ;;(global-set-key (kbd "C-c C-e") '(lambda () (interactive) (point-to-register "e")))



  ;; Use company mode instead of auto-complete
  ;; (global-company-mode)
  ;; (setq company-auto-complete t)
  ;; (setq company-auto-complete-chars "")
  ;; (setq company-idle-delay 0.4)
  ;; (setq company-minimum-prefix-length 3)

  ;; TAB to select a completion, not ENTER
  ;; (add-hook 'company-mode-hook (lambda ()
  ;;   (define-key company-active-map (kbd "TAB") 'company-complete-selection)
  ;;   (define-key company-active-map [escape] 'company-abort)
  ;;   (define-key company-active-map (kbd "RET") nil)))


  ;; enable desktop save mode
  ;;(desktop-save-mode 1)

  ;; enable sublimity minimap
  ;; (require 'sublimity)
  ;;(require 'sublimity-scroll)
  ;; (require 'sublimity-map)
  ;; (require 'sublimity-attractive)
  ;;(sublimity-mode 1)
  ;; (sublimity-map-set-delay nil)
  ;; (setq sublimity-map-size 10)
  ;; (setq sublimity-map-fraction 0.3)
  ;; (setq sublimity-map-text-scale -8)



  ;; beacon config
  ;;(beacon-mode 1)

  ;; enable gas-mode
  ;;(require 'gas-mode)
  ;;(add-to-list 'auto-mode-alist '("\\.S\\'" . gas-mode))
  ;;(gas-mode 1)
  (add-to-list 'auto-mode-alist '("\\.S\\'" . asm-mode))

  ;; emacs scrollbar speed
  ;;(setq mouse-wheel-scroll-amount '(2 ((shift) . 4) ((control) . nil)))
  ;;(setq mouse-wheel-progressive-speed nil)


  ;; config for helm-projectile-rg
  ;; (defun my-helm-projectile-rg--region-selection (old-fn &rest arguments)
  ;;   (let ((thing (thing-at-point 'symbol)))
  ;;     (if (null thing)
  ;;         (apply old-fn arguments)
  ;;       thing)))
  ;; (advice-add #'helm-projectile-rg--region-selection
  ;;             :around #'my-helm-projectile-rg--region-selection)


  ;; config for deadgrep
  ;;(global-set-key (kbd "<f1>") #'deadgrep)
  ;;(setq deadgrep-max-buffers nil)
  (setq deadgrep-max-buffers 20)
  ;;(setq deadgrep-executable "/usr/bin/rg -i --color always -C 2 -e")
  (setq deadgrep-display-buffer-function 'switch-to-buffer-other-frame)
  ;;(global-set-key (kbd "<double-mouse-1>") #'deadgrep-visit-result)
  (add-hook 'deadgrep-mode-hook
            (lambda ()
              (define-key deadgrep-mode-map(kbd "<double-mouse-1>") 'deadgrep-visit-result)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; basic configuration  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; plugin configuration  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; projectile (M-m p p switch project)
  (projectile-global-mode)
  (setq projectile-enable-caching t)
  ;;(global-set-key (kbd "M-f") 'counsel-projectile-find-file)
  (global-set-key (kbd "C-f") 'helm-projectile-find-file)
  ;;(setq projectile-require-project-root nil)
  ;;(projectile-discover-projects-in-directory "~/Project/github/db-6.1.19")
  (setq projectile-globally-ignored-directories (append '(".git") projectile-globally-ignored-directories))

  ;; gtags
  (with-eval-after-load 'gtags
    (spacemacs/helm-gtags-define-keys-for-mode 'c-mode)
    (spacemacs/helm-gtags-define-keys-for-mode 'c++-mode))
  ;;(spacemacs/helm-gtags-define-keys-for-mode 'c-mode)
  ;;(spacemacs/helm-gtags-define-keys-for-mode 'c++-mode)

  (add-hook 'c-mode-common-hook
            (lambda ()
              (when (derived-mode-p 'c-mode 'c++-mode)
                (helm-gtags-mode 1)
                ;;(counsel-gtags-mode 1)
                (define-key c++-mode-map(kbd "C-t C-t") 'helm-gtags-find-tag)
                ;;(define-key c++-mode-map(kbd "C-t C-t") 'counsel-gtags-find-definition)
                (define-key c-mode-map(kbd "C-t C-t") 'helm-gtags-find-tag)
                ;;(define-key c-mode-map(kbd "C-t C-t") 'counsel-gtags-find-definition)
                (define-key c++-mode-map(kbd "C-t C-r") 'helm-gtags-find-rtag)
                (define-key c-mode-map(kbd "C-t C-r") 'helm-gtags-find-rtag)
                (define-key c++-mode-map(kbd "C-t C-c") 'helm-cscope-find-calling-this-function)
                (define-key c-mode-map(kbd "C-t C-c") 'helm-cscope-find-calling-this-function)
                (define-key c++-mode-map(kbd "C-t C-b") 'helm-gtags-previous-history)
                ;;(define-key c++-mode-map(kbd "C-t C-b") 'counsel-gtags-go-backward)
                (define-key c-mode-map(kbd "C-t C-b") 'helm-gtags-previous-history)
                ;;(define-key c-mode-map(kbd "C-t C-b") 'counsel-gtags-go-backward)
                ;;(define-key c-mode-map(kbd "C-t C-e") 'helm-projectile-rg)
                (define-key c-mode-map(kbd "M-f") 'deadgrep)
                ;;(define-key c++-mode-map(kbd "C-t C-e") 'helm-projectile-rg))))
                (define-key c++-mode-map(kbd "M-f") 'deadgrep))))

  (add-hook 'asm-mode-hook
            (lambda ()
              (when (derived-mode-p 'asm-mode)
                (helm-gtags-mode 1)
                (define-key asm-mode-map(kbd "C-t C-t") 'helm-gtags-find-tag)
                (define-key asm-mode-map(kbd "C-t C-r") 'helm-gtags-find-rtag)
                (define-key asm-mode-map(kbd "C-t C-c") 'helm-cscope-find-calling-this-function)
                (define-key asm-mode-map(kbd "C-t C-b") 'helm-gtags-previous-history)
                ;;(define-key asm-mode-map(kbd "C-t C-e") 'helm-projectile-rg))))
                (define-key asm-mode-map(kbd "M-f") 'deadgrep))))


  ;; GDB layout: gud-gdb
  ;(defadvice gdb-setup-windows (after activate)
  ;  (gdb-setup-my-windows))
  (defun my/gdb-setup-windows-advice (&rest _args)
    (gdb-setup-my-windows))
  (advice-add 'gdb-setup-windows :after #'my/gdb-setup-windows-advice)


  (defun gdb-setup-my-windows ()
    (set-window-dedicated-p (selected-window) nil)
    (switch-to-buffer gud-comint-buffer)
    (delete-other-windows)
    (let
        ((win0 (selected-window))             ; breakpoints
         (win1 (split-window-horizontally
                (floor (* 0.5 (window-width)))))   ; source + i/o
         (win2 (split-window-vertically
                (floor (* 0.8 (window-body-height))))) ; gdb
         (win5 (split-window-vertically
                (floor (* 0.8 (window-body-height))))) ; disassembly
         (win3 (split-window-vertically
                (floor (* 0.5 (window-body-height))))) ; locals
         (win4 (split-window-vertically
                (floor (* 0.6 (window-body-height))))) ; stack
         )
      (select-window win1)
                                        ; configurating right window
      (let
          ((winSrc (selected-window)) ; source
           (winIO (split-window-vertically (floor (* 0.9 (window-body-height))))) ; I/O
           )
        (set-window-buffer winIO (gdb-get-buffer-create 'gdb-inferior-io))
        (set-window-buffer
         winSrc
         (if gud-last-last-frame
             (gud-find-file (car gud-last-last-frame))
           (if gdb-main-file
               (gud-find-file gdb-main-file)
             (list-buffers-noselect))))
        (setq gdb-source-window winSrc)
        (set-window-dedicated-p winIO t)
        )

      (set-window-buffer win0 (gdb-get-buffer-create 'gdb-breakpoints-buffer))
      (set-window-buffer win3 (gdb-get-buffer-create 'gdb-locals-buffer))
      (set-window-buffer win4 (gdb-get-buffer-create 'gdb-stack-buffer))
      (set-window-buffer win5 (gdb-get-buffer-create 'gdb-disassembly-buffer))
      (select-window win2)
      ))

  ;; GDB variables
  (setq gdb-many-windows t)
  (setq gdb-show-main t)
  (setq gdb-show-changed-values t)
  (setq gdb-use-colon-colon-notation t)
  (setq gdb-use-separate-io-buffer nil)
  (setq gdb-delete-out-of-scope t)
  (setq gdb-speedbar-auto-raise t)
  ;; C-c C-g start gud-gdb
  (global-set-key (kbd "C-c C-g") 'gdb)
  (global-set-key (kbd "<f5>") 'gud-run)
  (global-set-key (kbd "C-<f5>") 'gud-cont)
  (global-set-key (kbd "<f6>") 'gud-next)
  (global-set-key (kbd "<f7>") 'gud-step)
  (global-set-key (kbd "<f8>") 'gud-finish)
  (global-set-key (kbd "<f9>") 'gud-break)
  (global-set-key (kbd "S-<f9>") 'gud-remove)
  ;; C-<f7> jump to other window
  (global-set-key (kbd "C-<f7>") 'other-window)
  ;;(global-set-key (kbd "C-<f8>") 'previous-error)
  ;;(global-set-key (kbd "<f8>") 'next-error)
  (defvar all-gud-modes
    '(gud-mode comint-mode gdb-locals-mode gdb-frames-mode gdb-breakpoints-mode)
    "A list of modes when using gdb")
  (defun kill-all-gud-buffers ()
    "Kill all gud buffers including Debugger, Locals, Frames, Breakpoints.
Do this after `q` in Debugger buffer."
    (interactive)
    (save-excursion
      (let ((count 0))
        (dolist (buffer (buffer-list))
          (set-buffer buffer)
          (when (member major-mode all-gud-modes)
            (setq count (1+ count))
            (kill-buffer buffer)
            (delete-other-windows))) ;; fix the remaining two windows issue
        (message "Killed %i buffer(s)." count))))
  (global-set-key (kbd "<f10>") 'kill-all-gud-buffers)
  ;; kill buffer without prompt
  (setq kill-buffer-query-functions (delq 'process-kill-buffer-query-function kill-buffer-query-functions))

  ;; compilation
  ;; C-f2 config compile command; f2 save current file and run compile
  ;; make -k -C <Makefile directory>
  (defun du-onekey-compile ()
    "Save buffers and start compile"
    (interactive)
    (save-some-buffers t)
    (switch-to-buffer-other-window "*compilation*")
    (compile compile-command))
  (global-set-key [C-f2] 'compile)
  (global-set-key [f2] 'du-onekey-compile)
  ;; manually config compile command and run it
  (defun quick-compile ()
    "A quick compile funciton for C"
    (interactive)
    (compile (concat "gcc " (buffer-name (current-buffer)) " -g -Wall -pg -o "
                     (file-name-sans-extension (buffer-name (current-buffer))) )))
  ;;bind F3
  (global-set-key [(C-f3)] 'quick-compile)

  ;;(global-set-key (kbd "<f2>") 'compile)
  ;; change Makefile in another directory (compared to root directory)
  ;;((c++-mode (helm-make-build-dir . "build/")))
  ;;(put 'helm-make-build-dir 'safe-local-variable 'stringp)

  ;;  ediff
  (setq ediff-split-window-function (quote split-window-horizontally))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; plugin configuration  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bc75dfb513af404a26260b3420d1f3e4131df752c19ab2984a7c85def9a2917e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (rich-minority smart-mode-line-atom-one-dark-theme smart-mode-line smart-mode-line-powerline-theme spaceline-all-the-icons all-the-icons memoize yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode dash-functional helm-pydoc cython-mode company-anaconda anaconda-mode pythonic youdao-dictionary names chinese-word-at-point company-quickhelp monokai-theme helm-themes helm-swoop helm-projectile helm-mode-manager helm-gtags helm-gitignore helm-flx helm-descbinds helm-cscope helm-company helm-c-yasnippet helm-ag ace-jump-helm-line company-shell insert-shebang fish-mode x86-lookup nasm-mode zenburn-theme zen-and-art-theme xterm-color xcscope unfill underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle shell-pop seti-theme reverse-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme orgit organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mwim mustang-theme multi-term monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme magit-gitflow madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link ggtags gandalf-theme fuzzy flyspell-correct-ivy flyspell-correct flycheck-pos-tip pos-tip flycheck flatui-theme flatland-theme farmhouse-theme evil-magit magit magit-popup git-commit with-editor espresso-theme eshell-z eshell-prompt-extras esh-help dracula-theme django-theme disaster darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-statistics company-c-headers company color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized cmake-mode clues-theme clang-format cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet yasnippet auto-dictionary apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme ac-ispell auto-complete ws-butler winum which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline smex restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint ivy-hydra info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-make helm helm-core google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump popup f dash s diminish define-word counsel-projectile projectile pkg-info epl counsel swiper ivy column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed async aggressive-indent adaptive-wrap ace-window ace-link avy)))
 '(sml/mode-width
   (if
       (eq
        (powerline-current-separator)
        (quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote sml/global))))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote sml/global)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active2)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  ;; -*- mode: emacs-lisp -*-
  ;; This file is where Emacs writes custom variables.
  ;; Spacemacs will copy its content to your dotfile automatically in the
  ;; function `dotspacemacs/emacs-custom-settings'.
  ;; Do not alter this file, use Emacs customize interface instead.

  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(custom-safe-themes
     '("bc75dfb513af404a26260b3420d1f3e4131df752c19ab2984a7c85def9a2917e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))
   '(evil-want-Y-yank-to-eol nil)
   '(package-selected-packages
     '(rich-minority smart-mode-line-atom-one-dark-theme smart-mode-line smart-mode-line-powerline-theme spaceline-all-the-icons all-the-icons memoize yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode dash-functional helm-pydoc cython-mode company-anaconda anaconda-mode pythonic youdao-dictionary names chinese-word-at-point company-quickhelp monokai-theme helm-themes helm-swoop helm-projectile helm-mode-manager helm-gtags helm-gitignore helm-flx helm-descbinds helm-cscope helm-company helm-c-yasnippet helm-ag ace-jump-helm-line company-shell insert-shebang fish-mode x86-lookup nasm-mode zenburn-theme zen-and-art-theme xterm-color xcscope unfill underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle shell-pop seti-theme reverse-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme orgit organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mwim mustang-theme multi-term monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme magit-gitflow madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link ggtags gandalf-theme fuzzy flyspell-correct-ivy flyspell-correct flycheck-pos-tip pos-tip flycheck flatui-theme flatland-theme farmhouse-theme evil-magit magit magit-popup git-commit with-editor espresso-theme eshell-z eshell-prompt-extras esh-help dracula-theme django-theme disaster darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-statistics company-c-headers company color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized cmake-mode clues-theme clang-format cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet yasnippet auto-dictionary apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme ac-ispell auto-complete ws-butler which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline smex restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint ivy-hydra info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-make helm helm-core google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump popup f dash s diminish define-word counsel-projectile projectile pkg-info epl counsel swiper ivy column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed async aggressive-indent adaptive-wrap ace-window ace-link avy))
   '(sml/mode-width (if (eq (powerline-current-separator) 'arrow) 'right 'full))
   '(sml/pos-id-separator
     '(""
       (:propertize " " face powerline-active1)
       (:eval
        (propertize " " 'display
                    (funcall
                     (intern
                      (format "powerline-%s-%s"
                              (powerline-current-separator)
                              (car powerline-default-separator-dir)))
                     'powerline-active1 'powerline-active2)))
       (:propertize " " face powerline-active2)))
   '(sml/pos-minor-modes-separator
     '(""
       (:propertize " " face powerline-active1)
       (:eval
        (propertize " " 'display
                    (funcall
                     (intern
                      (format "powerline-%s-%s"
                              (powerline-current-separator)
                              (cdr powerline-default-separator-dir)))
                     'powerline-active1 'sml/global)))
       (:propertize " " face sml/global)))
   '(sml/pre-id-separator
     '(""
       (:propertize " " face sml/global)
       (:eval
        (propertize " " 'display
                    (funcall
                     (intern
                      (format "powerline-%s-%s"
                              (powerline-current-separator)
                              (car powerline-default-separator-dir)))
                     'sml/global 'powerline-active1)))
       (:propertize " " face powerline-active1)))
   '(sml/pre-minor-modes-separator
     '(""
       (:propertize " " face powerline-active2)
       (:eval
        (propertize " " 'display
                    (funcall
                     (intern
                      (format "powerline-%s-%s"
                              (powerline-current-separator)
                              (cdr powerline-default-separator-dir)))
                     'powerline-active2 'powerline-active1)))
       (:propertize " " face powerline-active1)))
   '(sml/pre-modes-separator (propertize " " 'face 'sml/modes)))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((t (:background nil))))
   '(highlight-parentheses-highlight ((nil (:weight ultra-bold))) t))
  )
