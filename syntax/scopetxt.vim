if exists("b:current_syntax")
  finish
endif

syn match scopeTxtTotal "^Total:"
syn match scopeTxtFeatures "^Features:"
syn match scopeTxtAssumptions "^Assumptions:"
syn match scopeTxtNumericalList "^\s*\d\+\. "
syn match scopeTxtBulletList "^\s*\* "

syn match scopeTxtInfoTag "\[[^H]\w*]"
syn keyword scopeTxtHighRiskTag [HighRisk]

"syn match scopeTxtEstimate "(\w|[[:ispunct:]]+)"

syn match scopeTxtOutcome "Outcome:"

syn match scopeTxtHoursEstimate "\(\d\|,\)\+ hours"

let b:current_syntax = "scopetxt"

hi def link scopeTxtTotal Underlined
hi def link scopeTxtFeatures Underlined
hi def link scopeTxtAssumptions Underlined
hi def link scopeTxtNumericalList Statement
hi def link scopeTxtBulletList Statement

hi def link scopeTxtOutcome Type

hi def link scopeTxtHighRiskTag Error
hi def link scopeTxtInfoTag Constant

hi def link scopeTxtHoursEstimate Function
