;;; omtose-phellack.el --- A dark, soothing theme with a cold bluish touch.

;; Created 2016 by Alexander F. Adhyatma

;; Author: Alexander F. Adhyatma
;; URL: http:/github.com/franksn/omtose-phellack-theme/
;; Version: 0.0.1-alpha2
;; Package-Requires: ((emacs "24"))
;; This theme is like the illegitimate son of Gruvbox and Cyberpunk
;;
;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;;; Installation:
;;
;;   M-x package-install -> omtose-phellack-theme
;;
;;   (load-theme 'omtose-phellack t)
;;
;;; Bugs
;;
;; report any bugs to lexadhy@gmx.com
;;
;;; Code:

(defgroup omtose-phellack-theme nil
  "omtose-phellack-theme options."
  :group 'faces)

(defcustom omtose-phellack-theme-org-height t
  "Use varying text heights for org headings."
  :type 'boolean
  :group 'omtose-phellack-theme)

(defcustom omtose-phellack-theme-tex-height-90 0.9
  "Font size 90%"
  :type 'number
  :group 'omtose-phellack-theme)

(defcustom omtose-phellack-theme-tex-height-110 1.1
  "Font size 110%"
  :type 'number
  :group 'omtose-phellack-theme)

(defcustom omtose-phellack-theme-tex-height-120 1.2
  "Font size 120%"
  :type 'number
  :group 'omtose-phellack-theme)

(defcustom omtose-phellack-theme-tex-height-130 1.3
  "Font size 130%"
  :type 'number
  :group 'omtose-phellack-theme)

(defun create-omtose-phellack-theme (theme-name)
  (let ((class '((class color) (min-colors 89)))
        ;;;;                                        GUI      TERM
        (dark0_hard      (if (display-graphic-p) "#232326" "color-234"))
        (dark0           (if (display-graphic-p) "#252629" "color-235"))
        (dark0_soft      (if (display-graphic-p) "#2c2f33" "color-236"))
        (dark1           (if (display-graphic-p) "#333438" "color-237"))
        (dark2           (if (display-graphic-p) "#3f4045" "color-238"))
        (dark3           (if (display-graphic-p) "#595963" "color-241"))
        (dark4           (if (display-graphic-p) "#73767d" "color-242"))

        (medium          (if (display-graphic-p) "#868691" "color-245"))

        (light0_hard     (if (display-graphic-p) "#CFCFCF" "color-230"))
        (light0          (if (display-graphic-p) "#DBDBDB" "color-231"))
        (light0_soft     (if (display-graphic-p) "#D5D8DE" "color-253"))
        (light1          (if (display-graphic-p) "#DADDE3" "color-189"))
        (light2          (if (display-graphic-p) "#D0D3D9" "color-250"))
        (light3          (if (display-graphic-p) "#BCC1C4" "color-248"))
        (light4          (if (display-graphic-p) "#A9ADB0" "color-246"))

        (bright_red      (if (display-graphic-p) "#A980C2" "color-219"))
        (bright_green    (if (display-graphic-p) "#8ABFB7" "color-142"))
        (bright_yellow   (if (display-graphic-p) "#ADC9C9" "color-195"))
        (bright_blue     (if (display-graphic-p) "#6084A3" "color-66"))
        (bright_purple   (if (display-graphic-p) "#7D85BA" "color-104"))
        (bright_cyan     (if (display-graphic-p) "#95A5C4" "color-189"))

        ;; Needs some work
        (neutral_red     (if (display-graphic-p) "#8E62a1" "color-133"))
        (neutral_green   (if (display-graphic-p) "#72A8A2" "color-115"))
        (neutral_yellow  (if (display-graphic-p) "#98B5A5" "color-151"))
        (neutral_blue    (if (display-graphic-p) "#4C7191" "color-67"))
        (neutral_purple  (if (display-graphic-p) "#6A6F99" "color-61"))
        (neutral_cyan    (if (display-graphic-p) "#7D8CA8" "color-146"))

        (dark_red        (if (display-graphic-p) "#674470" "color-1"))
        (dark_green      (if (display-graphic-p) "#6B9692" "color-2"))
        (dark_yellow     (if (display-graphic-p) "#708077" "color-3"))
        (dark_blue       (if (display-graphic-p) "#3A4D5E" "color-4"))
        (dark_purple     (if (display-graphic-p) "#676EA1" "color-5"))
        (dark_cyan       (if (display-graphic-p) "#5C6743" "color-6"))

        (delimiter-one   (if (display-graphic-p) "#BB4EB8" "color-140"))
        (delimiter-two   (if (display-graphic-p) "#9CD9d0" "color-121"))
        (delimiter-three (if (display-graphic-p) "#B6D4D4" "color-194"))
        (delimiter-four  (if (display-graphic-p) "#727AAD" "color-62"))

        (white           (if (display-graphic-p) "#FFFFFF" "white"))
        (black           (if (display-graphic-p) "#4D4D4D" "color-239"))
        (match           (if (display-graphic-p) "#C1DBDB" "color-195"))
        )

    (custom-theme-set-faces
     theme-name

     ;; UI
     `(default                                   ((,class (:foreground ,light0 :background ,dark0))))
     `(cursor                                    ((,class (:background ,light0_soft))))
     `(link                                      ((,class (:foreground ,bright_blue :underline t))))
     `(link-visited                              ((,class (:foreground ,bright_red :underline nil))))

     `(mode-line                                 ((,class (:foreground ,light1 :background ,dark0_hard :box nil))))
     `(mode-line-inactive                        ((,class (:foreground ,light4 :background ,dark2 :box nil))))
     `(fringe                                    ((,class (:background ,dark0))))
     `(linum                                     ((,class (:foreground ,dark4))))
     `(hl-line                                   ((,class (:background ,dark0_hard))))
     `(region                                    ((,class (:background ,dark_blue :distant-foreground ,light0))))
     `(secondary-selection                       ((,class (:background ,dark_cyan))))
     `(cua-rectangle                             ((,class (:background ,dark_blue))))
     `(header-line                               ((,class (:foreground ,bright_purple :background ,dark0 :bold nil))))
     `(minibuffer-prompt                         ((,class (:foreground ,dark_yellow :background ,dark0 :bold nil))))

     ;; Built-in syntax
     `(font-lock-builtin-face                    ((,class (:foreground ,bright_cyan))))
     `(font-lock-constant-face                   ((,class (:foreground ,bright_red))))
     `(font-lock-comment-face                    ((,class (:foreground ,dark4 :background ,dark0))))
     `(font-lock-doc-face                        ((,class (:inherit font-lock-comment-face))))
     `(font-lock-doc-string-face                 ((,class (:inherit font-lock-comment-face))))
     `(font-lock-function-name-face              ((,class (:foreground ,neutral_red))))
     `(font-lock-keyword-face                    ((,class (:foreground ,neutral_blue :weight bold))))
     `(font-lock-negation-char-face              ((,class (:foreground ,dark4))))
     `(font-lock-preprocessor-face               ((,class (:foreground ,neutral_red))))
     `(font-lock-reference-face                  ((,class (:foreground ,dark_purple))))
     `(font-lock-string-face                     ((,class (:foreground ,neutral_green))))
     `(font-lock-type-face                       ((,class (:foreground ,neutral_purple))))
     `(font-lock-variable-name-face              ((,class (:foreground ,neutral_yellow))))
     `(font-lock-warning-face                    ((,class (:foreground ,dark_yellow :bold t))))

     ;; Font lock extras
     `(clojure-keyword-face                      ((,class (:foreground ,neutral_cyan))))
     `(clojure-interop-method-face               ((,class (:foreground ,neutral_yellow))))
     `(elixir-atom-face                          ((,class (:foreground ,light4 :weight bold))))
     `(css-selector                              ((,class (:inherit font-lock-keyword-face))))
     `(css-property                              ((,class (:inherit font-lock-string-face))))

     ;; ag (The Silver Searcher)
     `(ag-hit-face                               ((,class (:foreground ,neutral_blue))))
     `(ag-match-face                             ((,class (:foreground ,neutral_red))))

     ;; Auto completion mode
     `(ac-dabbrev-menu-face                      ((,class (:inherit popup-face))))
     `(ac-dabbrev-selection-face                 ((,class (:inherit popup-menu-selection-face))))

     ;; Avy
     `(avy-lead-face-0                           ((,class (:foreground ,bright_blue ))))
     `(avy-lead-face-1                           ((,class (:foreground ,bright_cyan ))))
     `(avy-lead-face-2                           ((,class (:foreground ,bright_purple ))))
     `(avy-lead-face                             ((,class (:foreground ,bright_red ))))
     `(avy-background-face                       ((,class (:foreground ,dark3 ))))
     `(avy-goto-char-timer-face                  ((,class (:inherit    highlight ))))

     ;;Clojure-test-mode
     `(clojure-test-failure-face                 ((,class (:foreground ,dark_yellow :weight bold :underline t))))
     `(clojure-test-error-face                   ((,class (:foreground ,bright_red :weight bold :underline t))))
     `(clojure-test-success-face                 ((,class (:foreground ,neutral_green :weight bold :underline t))))

     ;; Cider-repl-mode
     `(cider-repl-err-output-face                ((,class (:inherit ,font-lock-warning-face :underline nil))))

     ;; Cider-test-mode
     `(cider-test-failure-face                   ((,class (:foreground ,dark_yellow :weight bold :underline t))))
     `(cider-test-error-face                     ((,class (:foreground ,bright_red :weight bold :underline t))))
     `(cider-test-success-face                   ((,class (:foreground ,neutral_green :weight bold :underline t))))

     ;; Company Mode
     `(company-echo                              ((,class (:inherit company-echo-common))))
     `(company-echo-common                       ((,class (:foreground ,bright_blue :background nil))))
     `(company-preview-common                    ((,class (:underline t :foreground ,light1))))
     `(company-preview                           ((,class (:inherit company-preview-common))))
     `(company-preview-search                    ((,class (:foreground ,neutral_red))))
     `(company-template-field                    ((,class (:foreground ,bright_blue :background nil :underline ,dark_blue))))
     `(company-scrollbar-fg                      ((,class (:foreground nil :background ,dark2))))
     `(company-scrollbar-bg                      ((,class (:foreground nil :background ,dark3))))
     `(company-tooltip                           ((,class (:foreground ,light0_hard :background ,dark1))))
     `(company-preview-common                    ((,class (:inherit font-lock-comment-face))))
     `(company-tooltip-common                    ((,class (:foreground ,light0 :background ,dark1))))
     `(company-tooltip-annotation                ((,class (:foreground ,bright_blue :background ,dark1))))
     `(company-tooltip-common-selection          ((,class (:foreground ,light0 :background ,dark_blue))))
     `(company-tooltip-mouse                     ((,class (:foreground ,dark0 :background ,bright_blue))))
     `(company-tooltip-selection                 ((,class (:foreground ,light0 :background ,neutral_blue))))

     ;; Diffs
     `(diff-changed                              ((,class (:foreground ,light1 :background nil))))
     `(diff-added                                ((,class (:foreground ,neutral_green :background nil))))
     `(diff-removed                              ((,class (:foreground ,neutral_red :background nil))))
     `(diff-indicator-changed                    ((,class (:inherit diff-changed))))
     `(diff-indicator-added                      ((,class (:inherit diff-added))))
     `(diff-indicator-removed                    ((,class (:inherit diff-removed))))

     ;; Diff-hl
     `(diff-hl-change                            ((,class (:inherit diff-changed))))
     `(diff-hl-delete                            ((,class (:inherit diff-removed))))
     `(diff-hl-insert                            ((,class (:inherit diff-added))))
     `(diff-hl-unknown                           ((,class (:foreground ,dark_cyan))))

     ;; Dired
     `(dired-directory                           ((,class (:foreground ,neutral_purple :weight bold))))
     `(dired-flagged                             ((,class (:foreground ,bright_yellow))))
     `(dired-header                              ((,class (:foreground ,dark4 :weight bold))))
     `(dired-ignored                             ((,class (:inherit font-lock-comment-face))))
     `(dired-mark                                ((,class (:foreground ,dark_blue :weight bold))))
     `(dired-marked                              ((,class (:foreground ,bright_cyan :weight bold))))
     `(dired-perm-write                          ((,class (:foreground ,light1 :underline t))))
     `(dired-symlink                             ((,class (:foreground ,dark3 :weight bold))))
     `(dired-warning                             ((,class (:foreground ,bright_yellow :weight bold))))


     ;; Elfeed
     `(elfeed-search-date-face                   ((,class (:foreground ,dark1))))
     `(elfeed-search-feed-face                   ((,class (:foreground ,dark1))))
     `(elfeed-search-tag-face                    ((,class (:foreground ,dark0))))
     `(elfeed-search-title-face                  ((,class (:foreground ,dark0))))

     ;; elscreen
     `(elscreen-tab-background-face              ((,class (:background ,dark0 :box nil)))) ;; Tab bar, not the tabs
     `(elscreen-tab-control-face                 ((,class (:foreground ,neutral_red :background ,dark2 :box nil :underline nil))))
     `(elscreen-tab-current-screen-face          ((,class (:foreground ,dark0 :background ,dark4 :box nil)))) ;; Current tab
     `(elscreen-tab-other-screen-face            ((,class (:foreground ,light4 :background ,dark2 :box nil :underline nil))))

     ;; Eshell
     `(eshell-ls-archive                         ((,class (:foreground ,neutral_red :weight bold))))
     `(eshell-ls-backup                          ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-clutter                         ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-directory                       ((,class (:foreground ,neutral_blue))))
     `(eshell-ls-executable                      ((,class (:foreground ,dark_green :weight bold))))
     `(eshell-ls-missing                         ((,class (:inherit font-lock-warning-face))))
     `(eshell-ls-product                         ((,class (:inherit font-lock-doc-face))))
     `(eshell-ls-special                         ((,class (:foreground ,bright_yellow :weight bold))))
     `(eshell-ls-symlink                         ((,class (:foreground ,neutral_cyan :weight bold))))
     `(eshell-ls-unreadable                      ((,class (:foreground ,dark4))))
     `(eshell-prompt                             ((,class (:foreground ,neutral_blue :weight bold))))

     ;; Flycheck
     `(flycheck-error                            ((,class (:foreground ,light0_hard :background ,bright_red :weight bold :underline t))))
     `(flycheck-error-list-checker-name          ((,class (:foreground ,neutral_blue))))
     `(flycheck-fringe-error                     ((,class (:foreground ,bright_red :weight bold))))
     `(flycheck-fringe-info                      ((,class (:foreground ,dark_blue :weight bold))))
     `(flycheck-fringe-warning                   ((,class (:foreground ,bright_yellow :weight bold))))
     `(flycheck-info                             ((,class (:foreground ,light0 :background ,bright_purple :weight bold :underline t))))
     `(flycheck-warning                          ((,class (:foreground ,light0 :background ,bright_yellow :weight bold :underline t))))


     ;; Haskell
     `(haskell-interactive-face-compile-warning  ((,class (:underline (:color ,bright_yellow :style wave)))))
     `(haskell-interactive-face-compile-error    ((,class (:underline (:color ,bright_red :style wave)))))
     `(haskell-interactive-face-garbage          ((,class (:foreground ,dark4 :background nil))))
     `(haskell-interactive-face-prompt           ((,class (:foreground ,light0 :background nil))))
     `(haskell-interactive-face-result           ((,class (:foreground ,light3 :background nil))))
     `(haskell-literate-comment-face             ((,class (:foreground ,light0 :background nil))))
     `(haskell-pragma-face                       ((,class (:foreground ,medium :background nil))))
     `(haskell-constructor-face                  ((,class (:foreground ,neutral_cyan :background nil))))

     ;; Helm
     `(helm-M-x-key                              ((,class (:foreground ,neutral_purple))))
     `(helm-action                               ((,class (:foreground ,white :underline t))))
     `(helm-bookmark-addressbook                 ((,class (:foreground ,neutral_red))))
     `(helm-bookmark-directory                   ((,class (:foreground ,bright_purple))))
     `(helm-bookmark-file                        ((,class (:foreground ,neutral_blue))))
     `(helm-bookmark-gnus                        ((,class (:foreground ,neutral_purple))))
     `(helm-bookmark-info                        ((,class (:foreground ,bright_purple))))
     `(helm-bookmark-man                         ((,class (:foreground ,neutral_blue))))
     `(helm-bookmark-w3m                         ((,class (:foreground ,neutral_yellow))))
     `(helm-buffer-directory                     ((,class (:foreground ,white :background ,bright_blue))))
     `(helm-buffer-not-saved                     ((,class (:foreground ,neutral_red))))
     `(helm-buffer-process                       ((,class (:foreground ,bright_red))))
     `(helm-buffer-saved-out                     ((,class (:foreground ,bright_red))))
     `(helm-buffer-size                          ((,class (:foreground ,bright_purple))))
     `(helm-candidate-number                     ((,class (:foreground ,neutral_green))))
     `(helm-ff-directory                         ((,class (:foreground ,neutral_purple))))
     `(helm-ff-executable                        ((,class (:foreground ,bright_purple))))
     `(helm-ff-file                              ((,class (:foreground ,neutral_blue))))
     `(helm-ff-invalid-symlink                   ((,class (:foreground ,white :background ,bright_red))))
     `(helm-ff-prefix                            ((,class (:foreground ,black :background ,neutral_yellow))))
     `(helm-ff-symlink                           ((,class (:foreground ,neutral_blue))))
     `(helm-grep-cmd-line                        ((,class (:foreground ,neutral_green))))
     `(helm-grep-file                            ((,class (:foreground ,neutral_purple))))
     `(helm-grep-finish                          ((,class (:foreground ,bright_purple))))
     `(helm-grep-lineno                          ((,class (:foreground ,neutral_blue))))
     `(helm-grep-match                           ((,class (:foreground ,neutral_yellow))))
     `(helm-grep-running                         ((,class (:foreground ,neutral_red))))
     `(helm-header                               ((,class (:foreground ,neutral_yellow))))
     `(helm-helper                               ((,class (:foreground ,neutral_yellow))))
     `(helm-history-deleted                      ((,class (:foreground ,black :background ,bright_red))))
     `(helm-history-remote                       ((,class (:foreground ,neutral_red))))
     `(helm-lisp-completion-info                 ((,class (:foreground ,neutral_blue))))
     `(helm-lisp-show-completion                 ((,class (:foreground ,bright_red))))
     `(helm-locate-finish                        ((,class (:foreground ,white :background ,dark_blue))))
     `(helm-match                                ((,class (:foreground ,neutral_blue))))
     `(helm-moccur-buffer                        ((,class (:foreground ,bright_cyan :underline t))))
     `(helm-prefarg                              ((,class (:foreground ,bright_purple))))
     `(helm-selection                            ((,class (:foreground ,white :background ,dark2))))
     `(helm-selection-line                       ((,class (:foreground ,white :background ,dark2))))
     `(helm-separator                            ((,class (:foreground ,neutral_red))))
     `(helm-source-header                        ((,class (:foreground ,light2 :background ,dark1))))
     `(helm-swoop-target-line-block-face         ((,class (:foreground ,light1 :background ,dark_blue))))
     `(helm-swoop-target-line-face               ((,class (:foreground ,light1 :background ,dark_blue))))
     `(helm-swoop-target-word-face               ((,class (:foreground ,light0_hard :background ,dark_green))))
     `(helm-visible-mark                         ((,class (:foreground ,black :background ,light3))))

     ;; Highlight indentation mode
     `(highlight-indentation-current-column-face ((,class (:background ,dark4))))
     `(highlight-indentation-face                ((,class (:background ,dark1))))

     ;; Highlight-numbers
     `(highlight-numbers-number                  ((,class (:foreground ,bright_purple :bold nil))))

     ;; Highlight-symbol
     `(highlight-symbol-face                     ((,class (:foreground ,neutral_purple))))

     ;; Ido
     `(ido-first-match                           ((,class (:foreground ,bright_purple :background ,dark0_hard))))
     `(ido-only-match                            ((,class (:foreground ,match))))

     ;; Js2
     `(js2-warning                               ((,class (:underline (:color ,bright_yellow :style wave)))))
     `(js2-error                                 ((,class (:underline (:color ,bright_red :style wave)))))
     `(js2-external-variable                     ((,class (:underline (:color ,bright_cyan :style wave)))))
     `(js2-jsdoc-tag                             ((,class (:foreground ,medium :background nil))))
     `(js2-jsdoc-type                            ((,class (:foreground ,light4 :background nil))))
     `(js2-jsdoc-value                           ((,class (:foreground ,light3 :background nil))))
     `(js2-function-param                        ((,class (:foreground ,bright_cyan :background nil))))
     `(js2-function-call                         ((,class (:foreground ,bright_blue :background nil))))
     `(js2-instance-member                       ((,class (:foreground ,bright_blue :background nil))))
     `(js2-private-member                        ((,class (:foreground ,neutral_yellow :background nil))))
     `(js2-private-function-call                 ((,class (:foreground ,neutral_cyan :background nil))))
     `(js2-jsdoc-html-tag-name                   ((,class (:foreground ,neutral_blue :background nil))))
     `(js2-jsdoc-html-tag-delimiter              ((,class (:foreground ,neutral_purple :background nil))))

     ;; linum-relative
     `(linum-relative-current-face               ((,class (:foreground ,light4 :background ,dark1))))

     ;; Magit
     `(magit-blame-culprit                       ((,class (:foreground ,bright_yellow))))
     `(magit-blame-header                        ((,class (:foreground ,neutral_green))))
     `(magit-blame-sha1                          ((,class (:foreground ,neutral_red))))
     `(magit-blame-subject                       ((,class (:foreground ,neutral_yellow))))
     `(magit-blame-time                          ((,class (:foreground ,dark_cyan))))
     `(magit-blame-name                          ((,class (:foreground ,dark_yellow))))
     `(magit-blame-heading                       ((,class (:foreground ,bright_green))))
     `(magit-blame-hash                          ((,class (:foreground ,neutral_red))))
     `(magit-blame-summary                       ((,class (:foreground ,dark4))))
     `(magit-blame-date                          ((,class (:foreground ,dark_green))))
     `(magit-branch                              ((,class (:foreground ,bright_purple :background nil))))
     `(magit-branch-local                        ((,class (:foreground ,bright_purple :background nil))))
     `(magit-branch-remote                       ((,class (:foreground ,neutral_yellow :background nil))))
     `(magit-cherry-equivalent                   ((,class (:foreground ,neutral_blue))))
     `(magit-cherry-unmatched                    ((,class (:foreground ,neutral_purple))))
     `(magit-diff-context                        ((,class (:foreground ,dark3 :background nil))))
     `(magit-diff-context-highlight              ((,class (:foreground ,dark4 :background ,dark0_soft))))
     `(magit-diff-added                          ((,class (:foreground ,bright_green :background ,dark_green))))
     `(magit-diff-added-highlight                ((,class (:foreground ,bright_green :background ,dark_green))))
     `(magit-diff-removed                        ((,class (:foreground ,bright_red :background ,dark_red))))
     `(magit-diff-removed-highlight              ((,class (:foreground ,bright_red :background ,dark_red))))
     `(magit-diff-add                            ((,class (:foreground ,bright_green))))
     `(magit-diff-del                            ((,class (:foreground ,bright_red))))
     `(magit-diff-file-header                    ((,class (:foreground ,bright_blue))))
     `(magit-diff-hunk-header                    ((,class (:foreground ,neutral_cyan))))
     `(magit-diff-merge-current                  ((,class (:background ,dark_yellow))))
     `(magit-diff-merge-diff3-separator          ((,class (:foreground ,neutral_blue :weight bold))))
     `(magit-diff-merge-proposed                 ((,class (:background ,dark_green))))
     `(magit-diff-merge-separator                ((,class (:foreground ,neutral_blue))))
     `(magit-diff-none                           ((,class (:foreground ,medium))))
     `(magit-item-highlight                      ((,class (:background ,dark1 :weight normal))))
     `(magit-item-mark                           ((,class (:background ,dark0))))
     `(magit-key-mode-args-face                  ((,class (:foreground ,light4))))
     `(magit-key-mode-button-face                ((,class (:foreground ,neutral_blue :weight bold))))
     `(magit-key-mode-header-face                ((,class (:foreground ,light4 :weight bold))))
     `(magit-key-mode-switch-face                ((,class (:foreground ,bright_purple :weight bold))))
     `(magit-log-author                          ((,class (:foreground ,neutral_cyan))))
     `(magit-log-date                            ((,class (:foreground ,neutral_blue))))
     `(magit-log-graph                           ((,class (:foreground ,light1))))
     `(magit-log-head-label-bisect-bad           ((,class (:foreground ,bright_red))))
     `(magit-log-head-label-bisect-good          ((,class (:foreground ,bright_green))))
     `(magit-log-head-label-bisect-skip          ((,class (:foreground ,neutral_yellow))))
     `(magit-log-head-label-default              ((,class (:foreground ,neutral_blue))))
     `(magit-log-head-label-head                 ((,class (:foreground ,light0 :background ,dark_cyan))))
     `(magit-log-head-label-local                ((,class (:foreground ,neutral_blue :weight bold))))
     `(magit-log-head-label-patches              ((,class (:foreground ,neutral_blue))))
     `(magit-log-head-label-remote               ((,class (:foreground ,neutral_blue :weight bold))))
     `(magit-log-head-label-tags                 ((,class (:foreground ,neutral_cyan))))
     `(magit-log-head-label-wip                  ((,class (:foreground ,neutral_red))))
     `(magit-log-message                         ((,class (:foreground ,light1))))
     `(magit-log-reflog-label-amend              ((,class (:foreground ,bright_blue))))
     `(magit-log-reflog-label-checkout           ((,class (:foreground ,bright_yellow))))
     `(magit-log-reflog-label-cherry-pick        ((,class (:foreground ,neutral_red))))
     `(magit-log-reflog-label-commit             ((,class (:foreground ,neutral_green))))
     `(magit-log-reflog-label-merge              ((,class (:foreground ,bright_green))))
     `(magit-log-reflog-label-other              ((,class (:foreground ,neutral_red))))
     `(magit-log-reflog-label-rebase             ((,class (:foreground ,bright_blue))))
     `(magit-log-reflog-label-remote             ((,class (:foreground ,neutral_blue))))
     `(magit-log-reflog-label-reset              ((,class (:foreground ,neutral_yellow))))
     `(magit-log-sha1                            ((,class (:foreground ,bright_blue))))
     `(magit-process-ng                          ((,class (:foreground ,bright_blue :weight bold))))
     `(magit-process-ok                          ((,class (:foreground ,bright_green :weight bold))))
     `(magit-section-heading                     ((,class (:foreground ,light2 :background ,dark_blue))))
     `(magit-signature-bad                       ((,class (:foreground ,bright_red :weight bold))))
     `(magit-signature-good                      ((,class (:foreground ,bright_green :weight bold))))
     `(magit-signature-none                      ((,class (:foreground ,neutral_red))))
     `(magit-signature-untrusted                 ((,class (:foreground ,bright_purple :weight bold))))
     `(magit-tag                                 ((,class (:foreground ,match))))
     `(magit-whitespace-warning-face             ((,class (:background ,neutral_red))))
     `(magit-bisect-bad                          ((,class (:foreground ,neutral_red))))
     `(magit-bisect-good                         ((,class (:foreground ,neutral_green))))
     `(magit-bisect-skip                         ((,class (:foreground ,light2))))

     ;; Matches and Isearch
     `(lazy-highlight                            ((,class (:foreground ,light0 :background ,dark2))))
     `(highlight                                 ((,class (:foreground ,light0_hard :background ,neutral_blue))))
     `(match                                     ((,class (:foreground ,light0 :background ,dark2))))
     `(isearch                                   ((,class (:foreground ,light0 :background ,dark_green))))
     `(isearch-fail                              ((,class (:foreground ,light0_hard :background ,dark_red))))
     `(show-paren-match                          ((,class (:foreground ,light0 :background ,neutral_blue))))
     `(show-paren-mismatch                       ((,class (:foreground ,light0_hard :background ,neutral_red))))
     `(anzu-mode-line                            ((,class (:foreground ,light0 :height 100 :background ,neutral_blue))))

     ;; Neotree
     `(neo-dir-link-face                         ((,class (:foreground ,bright_purple :weight bold))))
     `(neo-expand-btn-face                       ((,class (:foreground ,dark4))))
     `(neo-file-link-face                        ((,class (:foreground ,light3))))
     `(neo-root-dir-face                         ((,class (:foreground ,neutral_red :weight bold))))

     ;; Org-mode
     `(org-agenda-date-today                     ((,class (:foreground ,light2 :slant italic :weight bold :height ,(if omtose-phellack-theme-org-height 1.2 1.0)))))
     `(org-agenda-structure                      ((,class (:inherit font-lock-comment-face))))
     `(org-archived                              ((,class (:foreground ,light0 :weight bold))))
     `(org-checkbox                              ((,class (:foreground ,light2 :background ,dark0 :box (:line-width 1 :style released-button)))))
     `(org-date                                  ((,class (:foreground ,neutral_blue :underline t))))
     `(org-deadline-announce                     ((,class (:foreground ,neutral_red))))
     `(org-document-title                        ((,class (:foreground ,neutral_green :weight bold :height ,(if omtose-phellack-theme-org-height 1.3 1.0) :underline t))))
     `(org-done                                  ((,class (:foreground ,bright_green :bold t :weight bold))))
     `(org-formula                               ((,class (:foreground ,bright_yellow))))
     `(org-headline-done                         ((,class (:foreground ,bright_green))))
     `(org-hide                                  ((,class (:foreground ,dark0))))
     `(org-level-1                               ((,class (:foreground ,bright_blue :height ,(if omtose-phellack-theme-org-height 1.2 1.0)))))
     `(org-level-2                               ((,class (:foreground ,bright_green :height ,(if omtose-phellack-theme-org-height 1.1 1.0)))))
     `(org-level-3                               ((,class (:foreground ,bright_blue))))
     `(org-level-4                               ((,class (:foreground ,bright_yellow))))
     `(org-level-5                               ((,class (:foreground ,neutral_cyan))))
     `(org-level-6                               ((,class (:foreground ,bright_green))))
     `(org-level-7                               ((,class (:foreground ,bright_red))))
     `(org-level-8                               ((,class (:foreground ,bright_blue))))
     `(org-link                                  ((,class (:foreground ,bright_yellow :underline t))))
     `(org-scheduled                             ((,class (:foreground ,bright_green))))
     `(org-scheduled-previously                  ((,class (:foreground ,bright_red))))
     `(org-scheduled-today                       ((,class (:foreground ,bright_blue :height ,(if omtose-phellack-theme-org-height 1.1 1.0)))))
     `(org-sexp-date                             ((,class (:foreground ,bright_blue :underline t))))
     `(org-special-keyword                       ((,class (:inherit font-lock-comment-face))))
     `(org-table                                 ((,class (:foreground ,bright_green))))
     `(org-tag                                   ((,class (:bold t :weight bold))))
     `(org-time-grid                             ((,class (:foreground ,bright_blue))))
     `(org-todo                                  ((,class (:foreground ,bright_purple :weight bold :bold t))))
     `(org-upcoming-deadline                     ((,class (:inherit font-lock-keyword-face))))
     `(org-warning                               ((,class (:foreground ,bright_red :weight bold :underline nil :bold t))))
     `(org-column                                ((,class (:background ,dark0))))
     `(org-column-title                          ((,class (:background ,dark0_hard :underline t :weight bold))))
     `(org-mode-line-clock                       ((,class (:foreground ,light2 :background ,dark0))))
     `(org-mode-line-clock-overrun               ((,class (:foreground ,black :background ,bright_red))))
     `(org-ellipsis                              ((,class (:foreground ,bright_yellow :underline t))))
     `(org-footnote                              ((,class (:foreground ,neutral_cyan :underline t))))

     ;; Popup
     `(popup-face                                ((,class (:foreground ,light0 :background ,dark1))))
     `(popup-menu-mouse-face                     ((,class (:foreground ,light0 :background ,neutral_blue))))
     `(popup-menu-selection-face                 ((,class (:foreground ,light0 :background ,neutral_blue))))
     `(popup-tip-face                            ((,class (:foreground ,light0_hard :background ,dark_cyan))))

     ;; Powerline
     `(powerline-active1                         ((,class (:background ,dark2 :inherit mode-line))))
     `(powerline-active2                         ((,class (:background ,dark1 :inherit mode-line))))
     `(powerline-inactive1                       ((,class (:background ,medium :inherit mode-line-inactive))))
     `(powerline-inactive2                       ((,class (:background ,dark2 :inherit mode-line-inactive))))

     ;; RainbowDelimiters
     `(rainbow-delimiters-depth-1-face           ((,class (:foreground ,delimiter-one))))
     `(rainbow-delimiters-depth-2-face           ((,class (:foreground ,delimiter-two))))
     `(rainbow-delimiters-depth-3-face           ((,class (:foreground ,delimiter-three))))
     `(rainbow-delimiters-depth-4-face           ((,class (:foreground ,delimiter-four))))
     `(rainbow-delimiters-depth-5-face           ((,class (:foreground ,delimiter-one))))
     `(rainbow-delimiters-depth-6-face           ((,class (:foreground ,delimiter-two))))
     `(rainbow-delimiters-depth-7-face           ((,class (:foreground ,delimiter-three))))
     `(rainbow-delimiters-depth-8-face           ((,class (:foreground ,delimiter-four))))
     `(rainbow-delimiters-depth-9-face           ((,class (:foreground ,delimiter-one))))
     `(rainbow-delimiters-depth-10-face          ((,class (:foreground ,delimiter-two))))
     `(rainbow-delimiters-depth-11-face          ((,class (:foreground ,delimiter-three))))
     `(rainbow-delimiters-depth-12-face          ((,class (:foreground ,delimiter-four))))
     `(rainbow-delimiters-unmatched-face         ((,class (:foreground ,light0 :background nil))))

     ;; RainbowIdentifiers
     `(rainbow-identifiers-identifier-1          ((,class (:foreground ,bright_red))))
     `(rainbow-identifiers-identifier-2          ((,class (:foreground ,bright_green))))
     `(rainbow-identifiers-identifier-3          ((,class (:foreground ,bright_yellow))))
     `(rainbow-identifiers-identifier-4          ((,class (:foreground ,bright_blue))))
     `(rainbow-identifiers-identifier-5          ((,class (:foreground ,bright_purple))))
     `(rainbow-identifiers-identifier-6          ((,class (:foreground ,bright_cyan))))
     `(rainbow-identifiers-identifier-7          ((,class (:foreground ,bright_red))))
     `(rainbow-identifiers-identifier-8          ((,class (:foreground ,bright_green))))
     `(rainbow-identifiers-identifier-9          ((,class (:foreground ,bright_yellow))))
     `(rainbow-identifiers-identifier-10         ((,class (:foreground ,bright_blue))))
     `(rainbow-identifiers-identifier-11         ((,class (:foreground ,light0_hard))))
     `(rainbow-identifiers-identifier-12         ((,class (:foreground ,dark4))))
     `(rainbow-identifiers-identifier-13         ((,class (:foreground ,bright_blue))))
     `(rainbow-identifiers-identifier-14         ((,class (:foreground ,bright_yellow))))
     `(rainbow-identifiers-identifier-15         ((,class (:foreground ,bright_purple))))

     ;; sh mode
     `(sh-heredoc                                ((,class (:foreground ,match :background nil))))
     `(sh-quoted-exec                            ((,class (:foreground ,match :background nil))))

     ;; Smart-mode-line
     ;; use (setq sml/theme nil) to enable Omtose-Phellack for sml
     `(sml/modes                                 ((,class (:foreground ,light0_hard :weight bold :bold t))))
     `(sml/minor-modes                           ((,class (:foreground ,neutral_blue))))
     `(sml/filename                              ((,class (:foreground ,light0_hard :weight bold :bold t))))
     `(sml/prefix                                ((,class (:foreground ,neutral_blue))))
     `(sml/git                                   ((,class (:inherit sml/prefix))))
     `(sml/process                               ((,class (:inherit sml/prefix))))
     `(sml/sudo                                  ((,class (:foreground ,dark_red :weight bold))))
     `(sml/read-only                             ((,class (:foreground ,neutral_blue))))
     `(sml/outside-modified                      ((,class (:foreground ,dark_blue))))
     `(sml/modified                              ((,class (:foreground ,neutral_yellow))))
     `(sml/vc                                    ((,class (:foreground ,neutral_green))))
     `(sml/vc-edited                             ((,class (:foreground ,bright_green))))
     `(sml/charging                              ((,class (:foreground ,neutral_cyan))))
     `(sml/discharging                           ((,class (:foreground ,neutral_cyan :weight bold))))
     `(sml/col-number                            ((,class (:foreground ,neutral_blue))))
     `(sml/position-percentage                   ((,class (:foreground ,neutral_cyan))))

     ;; Smartparens
     `(sp-pair-overlay-face                      ((,class (:background ,dark2))))
     `(sp-show-pair-match-face                   ((,class (:background ,dark2 :foreground ,bright_green)))) ;; Pair tags highlight
     `(sp-show-pair-mismatch-face                ((,class (:background ,bright_red)))) ;; Highlight for bracket without pair

     ;;Smerge
     `(smerge-mine                               ((,class (:background ,dark_purple))))
     `(smerge-other                              ((,class (:background ,dark_blue))))
     `(smerge-markers                            ((,class (:background ,dark0_soft))))
     `(smerge-refined-added                      ((,class (:background ,dark_green))))
     `(smerge-refined-removed                    ((,class (:background ,dark_red))))

     ;; Term
     `(term-color-black                          ((,class (:foreground ,dark1))))
     `(term-color-blue                           ((,class (:foreground ,neutral_blue))))
     `(term-color-cyan                           ((,class (:foreground ,neutral_cyan))))
     `(term-color-green                          ((,class (:foreground ,neutral_green))))
     `(term-color-magenta                        ((,class (:foreground ,neutral_purple))))
     `(term-color-red                            ((,class (:foreground ,neutral_red))))
     `(term-color-white                          ((,class (:foreground ,light1))))
     `(term-color-yellow                         ((,class (:foreground ,neutral_yellow))))
     `(term-default-fg-color                     ((,class (:foreground ,light0))))
     `(term-default-bg-color                     ((,class (:background ,dark0)))))

    ;; Which-key
    `(which-key-command-description-face         ((,class (:foreground ,light2))))
    `(which-key-group-description-face           ((,class (:foreground ,medium))))
    `(which-key-key-face                         ((,class (:foreground ,neutral_purple :weight bold))))
    `(which-key-separator-face                   ((,class (:background nil :foreground ,dark_green))))
    `(which-key-special-key-face                 ((,class (:background ,neutral_red :foreground ,dark0))))

    ;; whitespace-mode
    `(whitespace-space                           ((,class (:foreground ,dark4 :background ,dark0))))
    `(whitespace-hspace                          ((,class (:foreground ,dark4 :background ,dark0))))
    `(whitespace-tab                             ((,class (:foreground ,dark4 :background ,dark0))))
    `(whitespace-newline                         ((,class (:foreground ,dark4 :background ,dark0))))
    `(whitespace-trailing                        ((,class (:foreground ,bright_yellow :background ,dark1))))
    `(whitespace-line                            ((,class (:foreground ,bright_red :background ,dark1))))
    `(whitespace-space-before-tab                ((,class (:foreground ,dark4 :background ,dark0))))
    `(whitespace-indentation                     ((,class (:foreground ,dark4 :background ,dark0))))
    `(whitespace-empty                           ((,class (:foreground nil :background nil))))
    `(whitespace-space-after-tab                 ((,class (:foreground ,dark4 :background ,dark0))))

    ;; TODO:
    ;; Add these modes:
    ;; Auctex/LaTEX, Cscope, ERC, Gnus, etc.

    (custom-theme-set-variables
     'omtose-phellack

     `(pos-tip-foreground-color ,light0_hard)
     `(pos-tip-background-color ,dark_cyan)

     `(ansi-color-names-vector [,dark3
                                ,neutral_red
                                ,neutral_green
                                ,neutral_yellow
                                ,neutral_blue
                                ,dark_purple
                                ,neutral_cyan
                                ,light3])
     `(xterm-color-names [,dark3 ,neutral_red ,neutral_green ,neutral_yellow ,neutral_blue ,dark_purple ,neutral_cyan ,light3])
     `(xterm-color-names-bright
       [,dark4 ,bright_red ,bright_green ,bright_yellow ,bright_blue ,bright_purple ,bright_cyan ,light4])
     )
    ))

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide 'omtose-phellack)

;;; omtose-phellack.el ends here
