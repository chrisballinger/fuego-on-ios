#-----------------------------------------------------------------------------
# Tests related to pass moves
#-----------------------------------------------------------------------------

uct_param_player max_games 3000
uct_param_player resign_threshold 0

loadsgf sgf/pass/tromp-taylor-pass.sgf

# CGOS rules (Tromp-Taylor scoring)
go_rules cgos

10 reg_genmove b
#? [A1|PASS]

# KGS rules (no Tromp-Taylor scoring)
go_rules kgs

20 reg_genmove b
#? [A1]
