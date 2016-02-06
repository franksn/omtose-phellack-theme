;;; omtose-phellack-theme.el --- A dark, soothing theme with a cold bluish touch

;; Created 2016 by Alexander F. Adhyatma

;; Author: Alexander F. Adhyatma
;; URL: http:/gitlab.com/franksn/omtose-phellack-theme/
;; Version: 0.0.1-alpha
;; Package-Requires: ((emacs "24"))
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
;; This theme is like the illegitimate son of Gruvbox and Cyberpunk
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

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(deftheme omtose-phellack "Color theme for Emacs, when soothe and gruvbox collide")

(let (
      (omtose-phellack-dark0_hard      (if (display-graphic-p) "#232326" "color-234"))
      (omtose-phellack-dark0           (if (display-graphic-p) "#252629" "color-235"))
      (omtose-phellack-dark0_soft      (if (display-graphic-p) "#2c2f33" "color-236"))
      (omtose-phellack-dark1           (if (display-graphic-p) "#333438" "color-237"))
      (omtose-phellack-dark2           (if (display-graphic-p) "#3f4045" "color-238"))
      (omtose-phellack-dark3           (if (display-graphic-p) "#595963" "color-241"))
      (omtose-phellack-dark4           (if (display-graphic-p) "#73767d" "color-242"))

      (omtose-phellack-medium          (if (display-graphic-p) "#868691" "color-245"))

      (omtose-phellack-light0_hard     (if (display-graphic-p) "#CFCFCF" "color-230"))
      (omtose-phellack-light0          (if (display-graphic-p) "#DBDBDB" "color-231"))
      (omtose-phellack-light0_soft     (if (display-graphic-p) "#D5D8DE" "color-253"))
      (omtose-phellack-light1          (if (display-graphic-p) "#DADDE3" "color-189"))
      (omtose-phellack-light2          (if (display-graphic-p) "#D0D3D9" "color-250"))
      (omtose-phellack-light3          (if (display-graphic-p) "#BCC1C4" "color-248"))
      (omtose-phellack-light4          (if (display-graphic-p) "#A9ADB0" "color-246"))

      (omtose-phellack-bright_red      (if (display-graphic-p) "#A980C2" "color-219"))
      (omtose-phellack-bright_green    (if (display-graphic-p) "#B8BB26" "color-142"))
      (omtose-phellack-bright_yellow   (if (display-graphic-p) "#ADC9C9" "color-195"))
      (omtose-phellack-bright_blue     (if (display-graphic-p) "#6084A3" "color-66"))
      (omtose-phellack-bright_purple   (if (display-graphic-p) "#7D85BA" "color-104"))
      (omtose-phellack-bright_cyan     (if (display-graphic-p) "#95A5C4" "color-189"))

      ;; Needs some work
      (omtose-phellack-neutral_red     (if (display-graphic-p) "#8E62a1" "color-133"))
      (omtose-phellack-neutral_green   (if (display-graphic-p) "#72A8A2" "color-115"))
      (omtose-phellack-neutral_yellow  (if (display-graphic-p) "#98B5A5" "color-151"))
      (omtose-phellack-neutral_blue    (if (display-graphic-p) "#4C7191" "color-67"))
      (omtose-phellack-neutral_purple  (if (display-graphic-p) "#676EA1" "color-61"))
      (omtose-phellack-neutral_cyan    (if (display-graphic-p) "#7D8CA8" "color-146"))

      (omtose-phellack-dark_red       (if (display-graphic-p)  "#674470" "color-1"))
      (omtose-phellack-dark_green     (if (display-graphic-p)  "#4D6966" "color-2"))
      (omtose-phellack-dark_yellow    (if (display-graphic-p)  "#708077" "color-3"))
      (omtose-phellack-dark_blue      (if (display-graphic-p)  "#3A4D5E" "color-4"))
      (omtose-phellack-dark_purple    (if (display-graphic-p)  "#4D5066" "color-5"))
      (omtose-phellack-dark_cyan      (if (display-graphic-p)  "#5C6743" "color-6"))

      (omtose-phellack-delimiter-one   (if (display-graphic-p) "#BB4EB8" "color-140"))
      (omtose-phellack-delimiter-two   (if (display-graphic-p) "#9CD9d0" "color-121"))
      (omtose-phellack-delimiter-three (if (display-graphic-p) "#B6D4D4" "color-194"))
      (omtose-phellack-delimiter-four  (if (display-graphic-p) "#727AAD" "color-62"))

      (omtose-phellack-white           (if (display-graphic-p) "#FFFFFF" "white"))
      (omtose-phellack-black           (if (display-graphic-p) "#4D4D4D" "color-239"))
      (omtose-phellack-match           (if (display-graphic-p) "#C1DBDB" "color-195"))
      )

  (custom-theme-set-faces
   'omtose-phellack

   ;; UI
   `(default                            ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-dark0))))
   `(cursor                             ((t (:background ,omtose-phellack-light0_soft))))
   `(link                               ((t (:foreground ,omtose-phellack-bright_blue :underline t))))
   `(link-visited                       ((t (:foreground ,omtose-phellack-bright_red :underline nil))))

   `(mode-line                          ((t (:foreground ,omtose-phellack-light1 :background ,omtose-phellack-dark0_hard :box nil))))
   `(mode-line-inactive                 ((t (:foreground ,omtose-phellack-light4 :background ,omtose-phellack-dark2 :box nil))))
   `(fringe                             ((t (:background ,omtose-phellack-dark0))))
   `(linum                              ((t (:foreground ,omtose-phellack-dark4))))
   `(hl-line                            ((t (:background ,omtose-phellack-dark0_hard))))
   `(region                             ((t (:background ,omtose-phellack-dark_blue :distant-foreground ,omtose-phellack-light0))))
   `(secondary-selection                ((t (:background ,omtose-phellack-dark_cyan))))
   `(cua-rectangle                      ((t (:background ,omtose-phellack-dark_blue))))
   `(header-line                        ((t (:foreground ,omtose-phellack-bright_purple :background ,omtose-phellack-dark0 :bold nil))))
   `(minibuffer-prompt                  ((t (:foreground ,omtose-phellack-dark_yellow :background ,omtose-phellack-dark0 :bold nil))))

   ;; Built-in syntax
   `(font-lock-builtin-face             ((t (:foreground ,omtose-phellack-bright_cyan))))
   `(font-lock-constant-face            ((t (:foreground ,omtose-phellack-bright_red))))
   `(font-lock-comment-face             ((t (:foreground ,omtose-phellack-dark4 :background ,omtose-phellack-dark0))))
   `(font-lock-doc-face                 ((t (:inherit font-lock-comment-face))))
   `(font-lock-doc-string-face          ((t (:inherit font-lock-comment-face))))
   `(font-lock-function-name-face       ((t (:foreground ,omtose-phellack-neutral_red))))
   `(font-lock-keyword-face             ((t (:foreground ,omtose-phellack-neutral_blue :weight bold))))
   `(font-lock-negation-char-face       ((t (:foreground ,omtose-phellack-dark4))))
   `(font-lock-preprocessor-face        ((t (:foreground ,omtose-phellack-neutral_red))))
   `(font-lock-reference-face           ((t (:foreground ,omtose-phellack-dark_purple))))
   `(font-lock-string-face              ((t (:foreground ,omtose-phellack-neutral_green))))
   `(font-lock-type-face                ((t (:foreground ,omtose-phellack-neutral_purple))))
   `(font-lock-variable-name-face       ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(font-lock-warning-face             ((t (:foreground ,omtose-phellack-dark_yellow :bold t))))

   ;; Font lock extras
   `(clojure-keyword-face               ((t (:foreground ,omtose-phellack-neutral_cyan))))
   `(clojure-interop-method-face        ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(elixir-atom-face                   ((t (:foreground ,omtose-phellack-light4 :weight bold))))
   `(css-selector                       ((t (:inherit font-lock-keyword-face))))
   `(css-property                       ((t (:inherit font-lock-string-face))))

   ;; ag (The Silver Searcher)
   `(ag-hit-face                        ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(ag-match-face                      ((t (:foreground ,omtose-phellack-neutral_red))))

   ;; Auto completion mode
   `(ac-dabbrev-menu-face               ((t (:inherit popup-face))))
   `(ac-dabbrev-selection-face          ((t (:inherit popup-menu-selection-face))))

   ;; Avy
   `(avy-lead-face-0                    ((t (:foreground ,omtose-phellack-bright_blue ))))
   `(avy-lead-face-1                    ((t (:foreground ,omtose-phellack-bright_cyan ))))
   `(avy-lead-face-2                    ((t (:foreground ,omtose-phellack-bright_purple ))))
   `(avy-lead-face                      ((t (:foreground ,omtose-phellack-bright_red ))))
   `(avy-background-face                ((t (:foreground ,omtose-phellack-dark3 ))))
   `(avy-goto-char-timer-face           ((t (:inherit    highlight ))))

   ;; Company Mode
   `(company-echo                       ((t (:inherit company-echo-common))))
   `(company-echo-common                ((t (:foreground ,omtose-phellack-bright_blue :background nil))))
   `(company-preview-common             ((t (:underline ,omtose-phellack-light1))))
   `(company-preview                    ((t (:inherit company-preview-common))))
   `(company-preview-search             ((t (:foreground ,omtose-phellack-neutral_red))))
   `(company-template-field             ((t (:foreground ,omtose-phellack-bright_blue :background nil :underline ,omtose-phellack-dark_blue))))
   `(company-scrollbar-fg               ((t (:foreground nil :background ,omtose-phellack-dark2))))
   `(company-scrollbar-bg               ((t (:foreground nil :background ,omtose-phellack-dark3))))
   `(company-tooltip                    ((t (:foreground ,omtose-phellack-light0_hard :background ,omtose-phellack-dark1))))
   `(company-preview-common             ((t (:inherit font-lock-comment-face))))
   `(company-tooltip-common             ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-dark1))))
   `(company-tooltip-annotation         ((t (:foreground ,omtose-phellack-bright_blue :background ,omtose-phellack-dark1))))
   `(company-tooltip-common-selection   ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-dark_blue))))
   `(company-tooltip-mouse              ((t (:foreground ,omtose-phellack-dark0 :background ,omtose-phellack-bright_blue))))
   `(company-tooltip-selection          ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-neutral_blue))))

   ;; Diffs
   `(diff-changed                       ((t (:foreground ,omtose-phellack-light1 :background nil))))
   `(diff-added                         ((t (:foreground ,omtose-phellack-neutral_green :background nil))))
   `(diff-removed                       ((t (:foreground ,omtose-phellack-neutral_red :background nil))))
   `(diff-indicator-changed             ((t (:inherit diff-changed))))
   `(diff-indicator-added               ((t (:inherit diff-added))))
   `(diff-indicator-removed             ((t (:inherit diff-removed))))

   ;; Diff-hl
   `(diff-hl-change                     ((t (:inherit diff-changed))))
   `(diff-hl-delete                     ((t (:inherit diff-removed))))
   `(diff-hl-insert                     ((t (:inherit diff-added))))
   `(diff-hl-unknown                    ((t (:foreground ,omtose-phellack-dark_cyan))))

   ;; Dired
   `(dired-directory                    ((t (:foreground ,omtose-phellack-neutral_purple :weight bold))))
   `(dired-flagged                      ((t (:foreground ,omtose-phellack-bright_yellow))))
   `(dired-header                       ((t (:foreground ,omtose-phellack-dark4 :weight bold))))
   `(dired-ignored                      ((t (:inherit font-lock-comment-face))))
   `(dired-mark                         ((t (:foreground ,omtose-phellack-dark_blue :weight bold))))
   `(dired-marked                       ((t (:foreground ,omtose-phellack-bright_cyan :weight bold))))
   `(dired-perm-write                   ((t (:foreground ,omtose-phellack-light1 :underline t))))
   `(dired-symlink                      ((t (:foreground ,omtose-phellack-dark3 :weight bold))))
   `(dired-warning                      ((t (:foreground ,omtose-phellack-bright_yellow :weight bold))))


   ;; Elfeed
   `(elfeed-search-date-face            ((t (:foreground ,omtose-phellack-dark1))))
   `(elfeed-search-feed-face            ((t (:foreground ,omtose-phellack-dark1))))
   `(elfeed-search-tag-face             ((t (:foreground ,omtose-phellack-dark0))))
   `(elfeed-search-title-face           ((t (:foreground ,omtose-phellack-dark0))))

   ;; elscreen
   `(elscreen-tab-background-face              ((t (:background ,omtose-phellack-dark0 :box nil)))) ;; Tab bar, not the tabs
   `(elscreen-tab-control-face                 ((t (:foreground ,omtose-phellack-neutral_red :background ,omtose-phellack-dark2 :box nil :underline nil))))
   `(elscreen-tab-current-screen-face          ((t (:foreground ,omtose-phellack-dark0 :background ,omtose-phellack-dark4 :box nil)))) ;; Current tab
   `(elscreen-tab-other-screen-face            ((t (:foreground ,omtose-phellack-light4 :background ,omtose-phellack-dark2 :box nil :underline nil))))

   ;; Flycheck
   `(flycheck-error                            ((t (:foreground ,omtose-phellack-light0_hard :background ,omtose-phellack-bright_red :weight bold :underline t))))
   `(flycheck-error-list-checker-name          ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(flycheck-fringe-error                     ((t (:foreground ,omtose-phellack-bright_red :weight bold))))
   `(flycheck-fringe-info                      ((t (:foreground ,omtose-phellack-dark_blue :weight bold))))
   `(flycheck-fringe-warning                   ((t (:foreground ,omtose-phellack-bright_yellow :weight bold))))
   `(flycheck-info                             ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-bright_purple :weight bold :underline t))))
   `(flycheck-warning                          ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-bright_yellow :weight bold :underline t))))


   ;; Haskell
   `(haskell-interactive-face-compile-warning  ((t (:underline (:color ,omtose-phellack-bright_yellow :style wave)))))
   `(haskell-interactive-face-compile-error    ((t (:underline (:color ,omtose-phellack-bright_red :style wave)))))
   `(haskell-interactive-face-garbage          ((t (:foreground ,omtose-phellack-dark4 :background nil))))
   `(haskell-interactive-face-prompt           ((t (:foreground ,omtose-phellack-light0 :background nil))))
   `(haskell-interactive-face-result           ((t (:foreground ,omtose-phellack-light3 :background nil))))
   `(haskell-literate-comment-face             ((t (:foreground ,omtose-phellack-light0 :background nil))))
   `(haskell-pragma-face                       ((t (:foreground ,omtose-phellack-medium :background nil))))
   `(haskell-constructor-face                  ((t (:foreground ,omtose-phellack-neutral_cyan :background nil))))

   ;; Helm
   `(helm-M-x-key                       ((t (:foreground ,omtose-phellack-neutral_purple))))
   `(helm-action                        ((t (:foreground ,omtose-phellack-white :underline t))))
   `(helm-bookmark-addressbook          ((t (:foreground ,omtose-phellack-neutral_red))))
   `(helm-bookmark-directory            ((t (:foreground ,omtose-phellack-bright_purple))))
   `(helm-bookmark-file                 ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(helm-bookmark-gnus                 ((t (:foreground ,omtose-phellack-neutral_purple))))
   `(helm-bookmark-info                 ((t (:foreground ,omtose-phellack-bright_purple))))
   `(helm-bookmark-man                  ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(helm-bookmark-w3m                  ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(helm-buffer-directory              ((t (:foreground ,omtose-phellack-white :background ,omtose-phellack-bright_blue))))
   `(helm-buffer-not-saved              ((t (:foreground ,omtose-phellack-neutral_red))))
   `(helm-buffer-process                ((t (:foreground ,omtose-phellack-bright_red))))
   `(helm-buffer-saved-out              ((t (:foreground ,omtose-phellack-bright_red))))
   `(helm-buffer-size                   ((t (:foreground ,omtose-phellack-bright_purple))))
   `(helm-candidate-number              ((t (:foreground ,omtose-phellack-neutral_green))))
   `(helm-ff-directory                  ((t (:foreground ,omtose-phellack-neutral_purple))))
   `(helm-ff-executable                 ((t (:foreground ,omtose-phellack-bright_purple))))
   `(helm-ff-file                       ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(helm-ff-invalid-symlink            ((t (:foreground ,omtose-phellack-white :background ,omtose-phellack-bright_red))))
   `(helm-ff-prefix                     ((t (:foreground ,omtose-phellack-black :background ,omtose-phellack-neutral_yellow))))
   `(helm-ff-symlink                    ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(helm-grep-cmd-line                 ((t (:foreground ,omtose-phellack-neutral_green))))
   `(helm-grep-file                     ((t (:foreground ,omtose-phellack-neutral_purple))))
   `(helm-grep-finish                   ((t (:foreground ,omtose-phellack-bright_purple))))
   `(helm-grep-lineno                   ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(helm-grep-match                    ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(helm-grep-running                  ((t (:foreground ,omtose-phellack-neutral_red))))
   `(helm-header                        ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(helm-helper                        ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(helm-history-deleted               ((t (:foreground ,omtose-phellack-black :background ,omtose-phellack-bright_red))))
   `(helm-history-remote                ((t (:foreground ,omtose-phellack-neutral_red))))
   `(helm-lisp-completion-info          ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(helm-lisp-show-completion          ((t (:foreground ,omtose-phellack-bright_red))))
   `(helm-locate-finish                 ((t (:foreground ,omtose-phellack-white :background ,omtose-phellack-neutral_yellow))))
   `(helm-match                         ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(helm-moccur-buffer                 ((t (:foreground ,omtose-phellack-bright_cyan :underline t))))
   `(helm-prefarg                       ((t (:foreground ,omtose-phellack-bright_purple))))
   `(helm-selection                     ((t (:foreground ,omtose-phellack-white :background ,omtose-phellack-dark2))))
   `(helm-selection-line                ((t (:foreground ,omtose-phellack-white :background ,omtose-phellack-dark2))))
   `(helm-separator                     ((t (:foreground ,omtose-phellack-neutral_red))))
   `(helm-source-header                 ((t (:foreground ,omtose-phellack-light2 :background ,omtose-phellack-dark1))))
   `(helm-visible-mark                  ((t (:foreground ,omtose-phellack-black :background ,omtose-phellack-light3))))

   ;; Highlight indentation mode
   `(highlight-indentation-current-column-face ((t (:background ,omtose-phellack-dark4))))
   `(highlight-indentation-face                ((t (:background ,omtose-phellack-dark1))))

   ;; Highlight-numbers
   `(highlight-numbers-number                  ((t (:foreground ,omtose-phellack-bright_purple :bold nil))))

   ;; Highlight-symbol
   `(highlight-symbol-face                     ((t (:foreground ,omtose-phellack-neutral_purple))))

   ;; Ido
   `(ido-first-match                           ((t (:foreground ,omtose-phellack-bright_purple :background ,omtose-phellack-dark0_hard))))
   `(ido-only-match                            ((t (:foreground ,omtose-phellack-match))))

   ;; Js2
   `(js2-warning                        ((t (:underline (:color ,omtose-phellack-bright_yellow :style wave)))))
   `(js2-error                          ((t (:underline (:color ,omtose-phellack-bright_red :style wave)))))
   `(js2-external-variable              ((t (:underline (:color ,omtose-phellack-bright_cyan :style wave)))))
   `(js2-jsdoc-tag                      ((t (:foreground ,omtose-phellack-medium :background nil))))
   `(js2-jsdoc-type                     ((t (:foreground ,omtose-phellack-light4 :background nil))))
   `(js2-jsdoc-value                    ((t (:foreground ,omtose-phellack-light3 :background nil))))
   `(js2-function-param                 ((t (:foreground ,omtose-phellack-bright_cyan :background nil))))
   `(js2-function-call                  ((t (:foreground ,omtose-phellack-bright_blue :background nil))))
   `(js2-instance-member                ((t (:foreground ,omtose-phellack-bright_blue :background nil))))
   `(js2-private-member                 ((t (:foreground ,omtose-phellack-neutral_yellow :background nil))))
   `(js2-private-function-call          ((t (:foreground ,omtose-phellack-neutral_cyan :background nil))))
   `(js2-jsdoc-html-tag-name            ((t (:foreground ,omtose-phellack-neutral_blue :background nil))))
   `(js2-jsdoc-html-tag-delimiter       ((t (:foreground ,omtose-phellack-neutral_purple :background nil))))

   ;; linum-relative
   `(linum-relative-current-face        ((t (:foreground ,omtose-phellack-light4 :background ,omtose-phellack-dark1))))

   ;; Magit
   `(magit-blame-culprit                ((t (:foreground ,omtose-phellack-bright_yellow))))
   `(magit-blame-header                 ((t (:foreground ,omtose-phellack-neutral_green))))
   `(magit-blame-sha1                   ((t (:foreground ,omtose-phellack-neutral_red))))
   `(magit-blame-subject                ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(magit-blame-time                   ((t (:foreground ,omtose-phellack-dark_cyan))))
   `(magit-blame-name                   ((t (:foreground ,omtose-phellack-dark_yellow))))
   `(magit-blame-heading                ((t (:foreground ,omtose-phellack-bright_green))))
   `(magit-blame-hash                   ((t (:foreground ,omtose-phellack-neutral_red))))
   `(magit-blame-summary                ((t (:foreground ,omtose-phellack-dark4))))
   `(magit-blame-date                   ((t (:foreground ,omtose-phellack-dark_green))))
   `(magit-branch                       ((t (:foreground ,omtose-phellack-bright_purple :background nil))))
   `(magit-branch-local                 ((t (:foreground ,omtose-phellack-bright_purple :background nil))))
   `(magit-branch-remote                ((t (:foreground ,omtose-phellack-neutral_yellow :background nil))))
   `(magit-cherry-equivalent            ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(magit-cherry-unmatched             ((t (:foreground ,omtose-phellack-neutral_purple))))
   `(magit-diff-context                 ((t (:foreground ,omtose-phellack-dark3 :background nil))))
   `(magit-diff-context-highlight       ((t (:foreground ,omtose-phellack-dark4 :background ,omtose-phellack-dark0_soft))))
   `(magit-diff-added                   ((t (:foreground ,omtose-phellack-bright_green :background ,omtose-phellack-dark_green))))
   `(magit-diff-added-highlight         ((t (:foreground ,omtose-phellack-bright_green :background ,omtose-phellack-dark_green))))
   `(magit-diff-removed                 ((t (:foreground ,omtose-phellack-bright_red :background ,omtose-phellack-dark_red))))
   `(magit-diff-removed-highlight       ((t (:foreground ,omtose-phellack-bright_red :background ,omtose-phellack-dark_red))))
   `(magit-diff-add                     ((t (:foreground ,omtose-phellack-bright_green))))
   `(magit-diff-del                     ((t (:foreground ,omtose-phellack-bright_red))))
   `(magit-diff-file-header             ((t (:foreground ,omtose-phellack-bright_blue))))
   `(magit-diff-hunk-header             ((t (:foreground ,omtose-phellack-neutral_cyan))))
   `(magit-diff-merge-current           ((t (:background ,omtose-phellack-dark_yellow))))
   `(magit-diff-merge-diff3-separator   ((t (:foreground ,omtose-phellack-neutral_blue :weight bold))))
   `(magit-diff-merge-proposed          ((t (:background ,omtose-phellack-dark_green))))
   `(magit-diff-merge-separator         ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(magit-diff-none                    ((t (:foreground ,omtose-phellack-medium))))
   `(magit-item-highlight               ((t (:background ,omtose-phellack-dark1 :weight normal))))
   `(magit-item-mark                    ((t (:background ,omtose-phellack-dark0))))
   `(magit-key-mode-args-face           ((t (:foreground ,omtose-phellack-light4))))
   `(magit-key-mode-button-face         ((t (:foreground ,omtose-phellack-neutral_blue :weight bold))))
   `(magit-key-mode-header-face         ((t (:foreground ,omtose-phellack-light4 :weight bold))))
   `(magit-key-mode-switch-face         ((t (:foreground ,omtose-phellack-bright_purple :weight bold))))
   `(magit-log-author                   ((t (:foreground ,omtose-phellack-neutral_cyan))))
   `(magit-log-date                     ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(magit-log-graph                    ((t (:foreground ,omtose-phellack-light1))))
   `(magit-log-head-label-bisect-bad    ((t (:foreground ,omtose-phellack-bright_red))))
   `(magit-log-head-label-bisect-good   ((t (:foreground ,omtose-phellack-bright_green))))
   `(magit-log-head-label-bisect-skip   ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(magit-log-head-label-default       ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(magit-log-head-label-head          ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-dark_cyan))))
   `(magit-log-head-label-local         ((t (:foreground ,omtose-phellack-neutral_blue :weight bold))))
   `(magit-log-head-label-patches       ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(magit-log-head-label-remote        ((t (:foreground ,omtose-phellack-neutral_blue :weight bold))))
   `(magit-log-head-label-tags          ((t (:foreground ,omtose-phellack-neutral_cyan))))
   `(magit-log-head-label-wip           ((t (:foreground ,omtose-phellack-neutral_red))))
   `(magit-log-message                  ((t (:foreground ,omtose-phellack-light1))))
   `(magit-log-reflog-label-amend       ((t (:foreground ,omtose-phellack-bright_blue))))
   `(magit-log-reflog-label-checkout    ((t (:foreground ,omtose-phellack-bright_yellow))))
   `(magit-log-reflog-label-cherry-pick ((t (:foreground ,omtose-phellack-neutral_red))))
   `(magit-log-reflog-label-commit      ((t (:foreground ,omtose-phellack-neutral_green))))
   `(magit-log-reflog-label-merge       ((t (:foreground ,omtose-phellack-bright_green))))
   `(magit-log-reflog-label-other       ((t (:foreground ,omtose-phellack-neutral_red))))
   `(magit-log-reflog-label-rebase      ((t (:foreground ,omtose-phellack-bright_blue))))
   `(magit-log-reflog-label-remote      ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(magit-log-reflog-label-reset       ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(magit-log-sha1                     ((t (:foreground ,omtose-phellack-bright_blue))))
   `(magit-process-ng                   ((t (:foreground ,omtose-phellack-bright_blue :weight bold))))
   `(magit-process-ok                   ((t (:foreground ,omtose-phellack-bright_green :weight bold))))
   `(magit-section-heading              ((t (:foreground ,omtose-phellack-light2 :background ,omtose-phellack-dark_blue))))
   `(magit-signature-bad                ((t (:foreground ,omtose-phellack-bright_red :weight bold))))
   `(magit-signature-good               ((t (:foreground ,omtose-phellack-bright_green :weight bold))))
   `(magit-signature-none               ((t (:foreground ,omtose-phellack-neutral_red))))
   `(magit-signature-untrusted          ((t (:foreground ,omtose-phellack-bright_purple :weight bold))))
   `(magit-tag                          ((t (:foreground ,omtose-phellack-match))))
   `(magit-whitespace-warning-face      ((t (:background ,omtose-phellack-neutral_red))))
   `(magit-bisect-bad                   ((t (:foreground ,omtose-phellack-neutral_red))))
   `(magit-bisect-good                  ((t (:foreground ,omtose-phellack-neutral_green))))
   `(magit-bisect-skip                  ((t (:foreground ,omtose-phellack-light2))))

   ;; Matches and Isearch
   `(lazy-highlight                     ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-dark2))))
   `(highlight                          ((t (:foreground ,omtose-phellack-light0_hard :background ,omtose-phellack-neutral_blue))))
   `(match                              ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-dark2))))
   `(isearch                            ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-dark_green))))
   `(isearch-fail                       ((t (:foreground ,omtose-phellack-light0_hard :background ,omtose-phellack-dark_red))))
   `(show-paren-match                   ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-neutral_blue))))
   `(show-paren-mismatch                ((t (:foreground ,omtose-phellack-light0_hard :background ,omtose-phellack-neutral_red))))
   `(anzu-mode-line                     ((t (:foreground ,omtose-phellack-light0 :height 100 :background ,omtose-phellack-neutral_blue))))

   ;; Neotree
   `(neo-dir-link-face                  ((t (:foreground ,omtose-phellack-bright_purple :weight bold))))
   `(neo-expand-btn-face                ((t (:foreground ,omtose-phellack-dark4))))
   `(neo-file-link-face                 ((t (:foreground ,omtose-phellack-light3))))
   `(neo-root-dir-face                  ((t (:foreground ,omtose-phellack-neutral_red :weight bold))))

   ;; Org-mode
   `(org-agenda-date-today              ((t (:foreground ,omtose-phellack-light2 :slant italic :weight bold))) t)
   `(org-agenda-structure               ((t (:inherit font-lock-comment-face))))
   `(org-archived                       ((t (:foreground ,omtose-phellack-light0 :weight bold))))
   `(org-checkbox                       ((t (:foreground ,omtose-phellack-light2 :background ,omtose-phellack-dark0 :box (:line-width 1 :style released-button)))))
   `(org-date                           ((t (:foreground ,omtose-phellack-neutral_blue :underline t))))
   `(org-deadline-announce              ((t (:foreground ,omtose-phellack-neutral_red))))
   `(org-done                           ((t (:foreground ,omtose-phellack-bright_green :bold t :weight bold))))
   `(org-formula                        ((t (:foreground ,omtose-phellack-bright_yellow))))
   `(org-headline-done                  ((t (:foreground ,omtose-phellack-bright_green))))
   `(org-hide                           ((t (:foreground ,omtose-phellack-dark0))))
   `(org-level-1                        ((t (:foreground ,omtose-phellack-bright_blue))))
   `(org-level-2                        ((t (:foreground ,omtose-phellack-bright_green))))
   `(org-level-3                        ((t (:foreground ,omtose-phellack-bright_blue))))
   `(org-level-4                        ((t (:foreground ,omtose-phellack-bright_yellow))))
   `(org-level-5                        ((t (:foreground ,omtose-phellack-neutral_cyan))))
   `(org-level-6                        ((t (:foreground ,omtose-phellack-bright_green))))
   `(org-level-7                        ((t (:foreground ,omtose-phellack-bright_red))))
   `(org-level-8                        ((t (:foreground ,omtose-phellack-bright_blue))))
   `(org-link                           ((t (:foreground ,omtose-phellack-bright_yellow :underline t))))
   `(org-scheduled                      ((t (:foreground ,omtose-phellack-bright_green))))
   `(org-scheduled-previously           ((t (:foreground ,omtose-phellack-bright_red))))
   `(org-scheduled-today                ((t (:foreground ,omtose-phellack-bright_blue))))
   `(org-sexp-date                      ((t (:foreground ,omtose-phellack-bright_blue :underline t))))
   `(org-special-keyword                ((t (:inherit font-lock-comment-face))))
   `(org-table                          ((t (:foreground ,omtose-phellack-bright_green))))
   `(org-tag                            ((t (:bold t :weight bold))))
   `(org-time-grid                      ((t (:foreground ,omtose-phellack-bright_blue))))
   `(org-todo                           ((t (:foreground ,omtose-phellack-bright_purple :weight bold :bold t))))
   `(org-upcoming-deadline              ((t (:inherit font-lock-keyword-face))))
   `(org-warning                        ((t (:foreground ,omtose-phellack-bright_red :weight bold :underline nil :bold t))))
   `(org-column                         ((t (:background ,omtose-phellack-dark0))))
   `(org-column-title                   ((t (:background ,omtose-phellack-dark0_hard :underline t :weight bold))))
   `(org-mode-line-clock                ((t (:foreground ,omtose-phellack-light2 :background ,omtose-phellack-dark0))))
   `(org-mode-line-clock-overrun        ((t (:foreground ,omtose-phellack-black :background ,omtose-phellack-bright_red))))
   `(org-ellipsis                       ((t (:foreground ,omtose-phellack-bright_yellow :underline t))))
   `(org-footnote                       ((t (:foreground ,omtose-phellack-neutral_cyan :underline t))))

   ;; Popup
   `(popup-face                         ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-dark1))))
   `(popup-menu-mouse-face              ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-neutral_blue))))
   `(popup-menu-selection-face          ((t (:foreground ,omtose-phellack-light0 :background ,omtose-phellack-neutral_blue))))
   `(popup-tip-face                     ((t (:foreground ,omtose-phellack-light0_hard :background ,omtose-phellack-dark_cyan))))

   ;; Powerline
   `(powerline-active1                  ((t (:background ,omtose-phellack-dark2 :inherit mode-line))))
   `(powerline-active2                  ((t (:background ,omtose-phellack-dark1 :inherit mode-line))))
   `(powerline-inactive1                ((t (:background ,omtose-phellack-medium :inherit mode-line-inactive))))
   `(powerline-inactive2                ((t (:background ,omtose-phellack-dark2 :inherit mode-line-inactive))))

   ;; RainbowDelimiters
   `(rainbow-delimiters-depth-1-face    ((t (:foreground ,omtose-phellack-delimiter-one))))
   `(rainbow-delimiters-depth-2-face    ((t (:foreground ,omtose-phellack-delimiter-two))))
   `(rainbow-delimiters-depth-3-face    ((t (:foreground ,omtose-phellack-delimiter-three))))
   `(rainbow-delimiters-depth-4-face    ((t (:foreground ,omtose-phellack-delimiter-four))))
   `(rainbow-delimiters-depth-5-face    ((t (:foreground ,omtose-phellack-delimiter-one))))
   `(rainbow-delimiters-depth-6-face    ((t (:foreground ,omtose-phellack-delimiter-two))))
   `(rainbow-delimiters-depth-7-face    ((t (:foreground ,omtose-phellack-delimiter-three))))
   `(rainbow-delimiters-depth-8-face    ((t (:foreground ,omtose-phellack-delimiter-four))))
   `(rainbow-delimiters-depth-9-face    ((t (:foreground ,omtose-phellack-delimiter-one))))
   `(rainbow-delimiters-depth-10-face   ((t (:foreground ,omtose-phellack-delimiter-two))))
   `(rainbow-delimiters-depth-11-face   ((t (:foreground ,omtose-phellack-delimiter-three))))
   `(rainbow-delimiters-depth-12-face   ((t (:foreground ,omtose-phellack-delimiter-four))))
   `(rainbow-delimiters-unmatched-face  ((t (:foreground ,omtose-phellack-light0 :background nil))))

   ;; RainbowIdentifiers
   `(rainbow-identifiers-identifier-1   ((t (:foreground ,omtose-phellack-bright_red))))
   `(rainbow-identifiers-identifier-2   ((t (:foreground ,omtose-phellack-bright_green))))
   `(rainbow-identifiers-identifier-3   ((t (:foreground ,omtose-phellack-bright_yellow))))
   `(rainbow-identifiers-identifier-4   ((t (:foreground ,omtose-phellack-bright_blue))))
   `(rainbow-identifiers-identifier-5   ((t (:foreground ,omtose-phellack-bright_purple))))
   `(rainbow-identifiers-identifier-6   ((t (:foreground ,omtose-phellack-bright_cyan))))
   `(rainbow-identifiers-identifier-7   ((t (:foreground ,omtose-phellack-bright_red))))
   `(rainbow-identifiers-identifier-8   ((t (:foreground ,omtose-phellack-bright_green))))
   `(rainbow-identifiers-identifier-9   ((t (:foreground ,omtose-phellack-bright_yellow))))
   `(rainbow-identifiers-identifier-10  ((t (:foreground ,omtose-phellack-bright_blue))))
   `(rainbow-identifiers-identifier-11  ((t (:foreground ,omtose-phellack-light0_hard))))
   `(rainbow-identifiers-identifier-12  ((t (:foreground ,omtose-phellack-dark4))))
   `(rainbow-identifiers-identifier-13  ((t (:foreground ,omtose-phellack-bright_blue))))
   `(rainbow-identifiers-identifier-14  ((t (:foreground ,omtose-phellack-bright_yellow))))
   `(rainbow-identifiers-identifier-15  ((t (:foreground ,omtose-phellack-bright_purple))))

   ;; sh mode
   `(sh-heredoc                         ((t (:foreground ,omtose-phellack-match :background nil))))
   `(sh-quoted-exec                     ((t (:foreground ,omtose-phellack-match :background nil))))

   ;; Smart-mode-line
   ;; use (setq sml/theme nil) to enable Omtose-Phellack for sml
   `(sml/modes                          ((t (:foreground ,omtose-phellack-light0_hard :weight bold :bold t))))
   `(sml/minor-modes                    ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(sml/filename                       ((t (:foreground ,omtose-phellack-light0_hard :weight bold :bold t))))
   `(sml/prefix                         ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(sml/git                            ((t (:inherit sml/prefix))))
   `(sml/process                        ((t (:inherit sml/prefix))))
   `(sml/sudo                           ((t (:foreground ,omtose-phellack-dark_red :weight bold))))
   `(sml/read-only                      ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(sml/outside-modified               ((t (:foreground ,omtose-phellack-dark_blue))))
   `(sml/modified                       ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(sml/vc                             ((t (:foreground ,omtose-phellack-neutral_green))))
   `(sml/vc-edited                      ((t (:foreground ,omtose-phellack-bright_green))))
   `(sml/charging                       ((t (:foreground ,omtose-phellack-neutral_cyan))))
   `(sml/discharging                    ((t (:foreground ,omtose-phellack-neutral_cyan :weight bold))))
   `(sml/col-number                     ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(sml/position-percentage            ((t (:foreground ,omtose-phellack-neutral_cyan))))

   ;; Smartparens
   `(sp-pair-overlay-face                      ((t (:background ,omtose-phellack-dark2))))
   `(sp-show-pair-match-face                   ((t (:background ,omtose-phellack-dark2 :foreground ,omtose-phellack-bright_green)))) ;; Pair tags highlight
   `(sp-show-pair-mismatch-face                ((t (:background ,omtose-phellack-bright_red)))) ;; Highlight for bracket without pair

   ;;Smerge
   `(smerge-mine                        ((t (:background ,omtose-phellack-dark_purple))))
   `(smerge-other                       ((t (:background ,omtose-phellack-dark_blue))))
   `(smerge-markers                     ((t (:background ,omtose-phellack-dark0_soft))))
   `(smerge-refined-added               ((t (:background ,omtose-phellack-dark_green))))
   `(smerge-refined-removed             ((t (:background ,omtose-phellack-dark_red))))

   ;; Term
   `(term-color-black                   ((t (:foreground ,omtose-phellack-dark1))))
   `(term-color-blue                    ((t (:foreground ,omtose-phellack-neutral_blue))))
   `(term-color-cyan                    ((t (:foreground ,omtose-phellack-neutral_cyan))))
   `(term-color-green                   ((t (:foreground ,omtose-phellack-neutral_green))))
   `(term-color-magenta                 ((t (:foreground ,omtose-phellack-neutral_purple))))
   `(term-color-red                     ((t (:foreground ,omtose-phellack-neutral_red))))
   `(term-color-white                   ((t (:foreground ,omtose-phellack-light1))))
   `(term-color-yellow                  ((t (:foreground ,omtose-phellack-neutral_yellow))))
   `(term-default-fg-color              ((t (:foreground ,omtose-phellack-light0))))
   `(term-default-bg-color              ((t (:background ,omtose-phellack-dark0)))))

  ;; Which-key
  `(which-key-command-description-face  ((t (:foreground ,omtose-phellack-light2))))
  `(which-key-group-description-face    ((t (:foreground ,omtose-phellack-medium))))
  `(which-key-key-face                  ((t (:foreground ,omtose-phellack-neutral_purple :weight bold))))
  `(which-key-separator-face            ((t (:background nil :foreground ,omtose-phellack-dark_green))))
  `(which-key-special-key-face          ((t (:background ,omtose-phellack-neutral_red :foreground ,omtose-phellack-dark0))))

   ;; whitespace-mode
   `(whitespace-space                   ((t (:foreground ,omtose-phellack-dark4 :background ,omtose-phellack-dark0))))
   `(whitespace-hspace                  ((t (:foreground ,omtose-phellack-dark4 :background ,omtose-phellack-dark0))))
   `(whitespace-tab                     ((t (:foreground ,omtose-phellack-dark4 :background ,omtose-phellack-dark0))))
   `(whitespace-newline                 ((t (:foreground ,omtose-phellack-dark4 :background ,omtose-phellack-dark0))))
   `(whitespace-trailing                ((t (:foreground ,omtose-phellack-bright_yellow :background ,omtose-phellack-dark1))))
   `(whitespace-line                    ((t (:foreground ,omtose-phellack-bright_red :background ,omtose-phellack-dark1))))
   `(whitespace-space-before-tab        ((t (:foreground ,omtose-phellack-dark4 :background ,omtose-phellack-dark0))))
   `(whitespace-indentation             ((t (:foreground ,omtose-phellack-dark4 :background ,omtose-phellack-dark0))))
   `(whitespace-empty                   ((t (:foreground nil :background nil))))
   `(whitespace-space-after-tab         ((t (:foreground ,omtose-phellack-dark4 :background ,omtose-phellack-dark0))))

   ;; TODO:
   ;; Add these modes:
   ;; Auctex / LaTEX, Cscope, ERC, Gnus, Flycheck, etc.

  (custom-theme-set-variables
   'omtose-phellack

   `(pos-tip-foreground-color ,omtose-phellack-light0_hard)
   `(pos-tip-background-color ,omtose-phellack-dark_cyan)

   `(ansi-color-names-vector ["#44434C"
                              "#8E62A1"
                              "#72A8A2"
                              "#98B5A5"
                              "#4C7191"
                              "#676EA1"
                              "#7D8CA8"
                              "#BBC1C4"])))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'omtose-phellack)

;;; omtose-phellack-theme.el ends here
