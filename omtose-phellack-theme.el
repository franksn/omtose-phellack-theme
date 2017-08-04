;;; omtose-phellack-theme.el --- Two dark, soothing themes with a cold bluish touch.

;; Copyright (c) 2016 Alexander F. Adhyatma

;; Author: Alexander F. Adhyatma
;; URL: http:/github.com/franksn/omtose-darker/
;; Version: 0.2.0
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

;;; Dark theme, with cold bluish touch. Available in 2 variants.

;;; Add theme files under 'variants' subdir to load path.

;;; Code:
(let ((dir (file-name-directory load-file-name)))
  (add-to-list 'custom-theme-load-path (concat dir "/variants")))

(provide 'omtose-phellack-theme)

;;; omtose-phellack-theme.el ends here.
