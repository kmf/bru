;;; bru-latte-theme.el --- A lekker light colorscheme -*- lexical-binding: t; -*-

;; Author: kmf
;; URL: https://github.com/kmf/bru
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.1"))

;;; Commentary:
;; Warm sepia cream base with dark coffee text and darkened, contrast-safe accents.
;; Part of the bru colorscheme: solarized accents, gruvbox warmth, brewed slow.

;;; Code:

(deftheme bru-latte "A lekker light colorscheme.")

(let ((bg       "#faf3e0")
      (bg-soft  "#f3ead0")
      (bg-hi    "#ece3cc")
      (border   "#e0d4b0")
      (fg       "#3a2f22")
      (fg-alt   "#2d241a")
      (fg-muted "#8a7f6f")
      (yellow   "#ad8900")
      (orange   "#c25d1e")
      (red      "#d2212d")
      (magenta  "#ca4898")
      (violet   "#8762c6")
      (blue     "#0072d4")
      (teal     "#009c8f")
      (green    "#489100")
      (br-red     "#cc1729")
      (br-green   "#428b00")
      (br-yellow  "#a78300")
      (br-blue    "#006dce")
      (br-magenta "#c44392")
      (br-teal    "#00978a")
      (br-orange  "#bb5617")
      (br-violet  "#815cc0")
      (diff-add "#e8efd4")
      (diff-del "#f3dcd8")
      (diff-chg "#f0e8c4"))

  (custom-theme-set-faces
   'bru-latte

   ;; --- UI ---
   `(default                ((t (:foreground ,fg :background ,bg))))
   `(cursor                 ((t (:background ,yellow))))
   `(region                 ((t (:background ,bg-hi))))
   `(highlight              ((t (:background ,bg-hi))))
   `(hl-line                ((t (:background ,bg-soft))))
   `(fringe                 ((t (:background ,bg))))
   `(vertical-border        ((t (:foreground ,border))))
   `(border                 ((t (:foreground ,border))))
   `(window-divider         ((t (:foreground ,border))))
   `(minibuffer-prompt      ((t (:foreground ,yellow :bold t))))
   `(line-number            ((t (:foreground ,border))))
   `(line-number-current-line ((t (:foreground ,yellow :bold t))))
   `(shadow                 ((t (:foreground ,fg-muted))))
   `(link                   ((t (:foreground ,blue :underline t))))
   `(link-visited           ((t (:foreground ,violet :underline t))))
   `(error                  ((t (:foreground ,red :bold t))))
   `(warning                ((t (:foreground ,orange))))
   `(success                ((t (:foreground ,green))))
   `(match                  ((t (:foreground ,bg :background ,yellow))))
   `(isearch                ((t (:foreground ,bg :background ,orange))))
   `(lazy-highlight         ((t (:background ,bg-hi))))
   `(trailing-whitespace    ((t (:background ,red))))
   `(secondary-selection    ((t (:background ,bg-hi))))

   ;; --- Mode line ---
   `(mode-line              ((t (:foreground ,fg :background ,bg-soft :box (:line-width 1 :color ,border)))))
   `(mode-line-inactive     ((t (:foreground ,fg-muted :background ,bg-soft :box (:line-width 1 :color ,border)))))
   `(mode-line-emphasis     ((t (:foreground ,yellow :bold t))))
   `(mode-line-buffer-id    ((t (:foreground ,yellow :bold t))))

   ;; --- Completions ---
   `(completions-common-part    ((t (:foreground ,blue :bold t))))
   `(completions-first-difference ((t (:foreground ,yellow))))

   ;; --- Diff ---
   `(diff-added             ((t (:background ,diff-add))))
   `(diff-removed           ((t (:background ,diff-del))))
   `(diff-changed           ((t (:background ,diff-chg))))
   `(diff-header            ((t (:foreground ,blue :bold t))))
   `(diff-file-header       ((t (:foreground ,yellow :bold t))))

   ;; --- Font lock (syntax) ---
   `(font-lock-comment-face           ((t (:foreground ,fg-muted :italic t))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,fg-muted :italic t))))
   `(font-lock-doc-face               ((t (:foreground ,fg-muted :italic t))))
   `(font-lock-string-face            ((t (:foreground ,green))))
   `(font-lock-keyword-face           ((t (:foreground ,red))))
   `(font-lock-builtin-face           ((t (:foreground ,blue))))
   `(font-lock-function-name-face     ((t (:foreground ,blue))))
   `(font-lock-variable-name-face     ((t (:foreground ,fg))))
   `(font-lock-type-face              ((t (:foreground ,violet))))
   `(font-lock-constant-face          ((t (:foreground ,orange))))
   `(font-lock-number-face            ((t (:foreground ,teal))))
   `(font-lock-warning-face           ((t (:foreground ,orange :bold t))))
   `(font-lock-negation-char-face     ((t (:foreground ,red))))
   `(font-lock-preprocessor-face      ((t (:foreground ,magenta))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,magenta))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,magenta))))

   ;; --- Org mode ---
   `(org-level-1            ((t (:foreground ,yellow :bold t))))
   `(org-level-2            ((t (:foreground ,blue))))
   `(org-level-3            ((t (:foreground ,violet))))
   `(org-level-4            ((t (:foreground ,teal))))
   `(org-level-5            ((t (:foreground ,green))))
   `(org-level-6            ((t (:foreground ,orange))))
   `(org-level-7            ((t (:foreground ,magenta))))
   `(org-level-8            ((t (:foreground ,fg-muted))))
   `(org-todo               ((t (:foreground ,red :bold t))))
   `(org-done               ((t (:foreground ,green :bold t))))
   `(org-headline-done      ((t (:foreground ,fg-muted))))
   `(org-link               ((t (:foreground ,blue :underline t))))
   `(org-code               ((t (:foreground ,green))))
   `(org-verbatim           ((t (:foreground ,teal))))
   `(org-date               ((t (:foreground ,teal :underline t))))
   `(org-block              ((t (:background ,bg-soft))))
   `(org-block-begin-line   ((t (:foreground ,fg-muted :background ,bg-soft))))
   `(org-block-end-line     ((t (:foreground ,fg-muted :background ,bg-soft))))

   ;; --- Markdown ---
   `(markdown-header-face-1 ((t (:foreground ,yellow :bold t))))
   `(markdown-header-face-2 ((t (:foreground ,blue :bold t))))
   `(markdown-header-face-3 ((t (:foreground ,violet :bold t))))
   `(markdown-code-face     ((t (:foreground ,green))))
   `(markdown-link-face     ((t (:foreground ,blue))))
   `(markdown-url-face      ((t (:foreground ,teal :underline t))))
   `(markdown-inline-code-face ((t (:foreground ,green :background ,bg-soft))))

   ;; --- Show paren ---
   `(show-paren-match       ((t (:foreground ,yellow :background ,bg-hi :bold t))))
   `(show-paren-mismatch    ((t (:foreground ,bg :background ,red :bold t))))

   ;; --- Flycheck / Flymake ---
   `(flycheck-error         ((t (:underline (:style wave :color ,red)))))
   `(flycheck-warning       ((t (:underline (:style wave :color ,orange)))))
   `(flycheck-info          ((t (:underline (:style wave :color ,blue)))))
   `(flymake-error          ((t (:underline (:style wave :color ,red)))))
   `(flymake-warning        ((t (:underline (:style wave :color ,orange)))))
   `(flymake-note           ((t (:underline (:style wave :color ,blue)))))

   ;; --- Company ---
   `(company-tooltip            ((t (:foreground ,fg :background ,bg-soft))))
   `(company-tooltip-selection  ((t (:background ,bg-hi))))
   `(company-tooltip-common     ((t (:foreground ,blue :bold t))))
   `(company-scrollbar-bg       ((t (:background ,bg-hi))))
   `(company-scrollbar-fg       ((t (:background ,border))))

   ;; --- Which-key ---
   `(which-key-key-face          ((t (:foreground ,yellow))))
   `(which-key-group-description-face ((t (:foreground ,blue))))
   `(which-key-command-description-face ((t (:foreground ,fg))))
   `(which-key-separator-face    ((t (:foreground ,fg-muted))))

   ;; --- Magit ---
   `(magit-section-heading       ((t (:foreground ,yellow :bold t))))
   `(magit-branch-local          ((t (:foreground ,blue))))
   `(magit-branch-remote         ((t (:foreground ,green))))
   `(magit-diff-added            ((t (:foreground ,green :background ,diff-add))))
   `(magit-diff-removed          ((t (:foreground ,red :background ,diff-del))))
   `(magit-diff-context          ((t (:foreground ,fg-muted))))
   `(magit-diff-hunk-heading     ((t (:foreground ,fg :background ,bg-hi))))
   ))

(provide-theme 'bru-latte)

;;; bru-latte-theme.el ends here
