;;; omtose-phellack-theme.el --- A dark, soothing theme with a cold bluish touch.

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

(require 'omtose-phellack)

(deftheme omtose-phellack "A dark, soothing theme with a cold bluish touch")

(create-omtose-phellack-theme 'omtose-phellack)

(provide-theme 'omtose-phellack)
