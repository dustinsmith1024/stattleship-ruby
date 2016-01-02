require 'addressable/uri'
require 'addressable/template'
require 'dotenv'
require 'link_header'
require 'net/https'
require 'ordinalize'
require 'ostruct'
require 'roar/json'

require 'stattleship/version'

require 'stattleship/client/configuration'
require 'stattleship/client/client'

require 'stattleship/models/game'
require 'stattleship/models/league'
require 'stattleship/models/player'
require 'stattleship/models/season'
require 'stattleship/models/team'
require 'stattleship/models/venue'

require 'stattleship/validators/base_validator'
require 'stattleship/validators/game_id_validator'
require 'stattleship/validators/interval_type_validator'
require 'stattleship/validators/on_validator'
require 'stattleship/validators/place_validator'
require 'stattleship/validators/player_id_validator'
require 'stattleship/validators/season_id_validator'
require 'stattleship/validators/since_validator'
require 'stattleship/validators/stat_validator'
require 'stattleship/validators/status_validator'
require 'stattleship/validators/team_id_validator'
require 'stattleship/validators/type_validator'
require 'stattleship/validators/week_validator'

require 'stattleship/params/query_params'
require 'stattleship/params/stat_leaders_params'
require 'stattleship/params/basketball_stat_leaders_params'
require 'stattleship/params/football_stat_leaders_params'
require 'stattleship/params/hockey_stat_leaders_params'
require 'stattleship/params/game_time_params'
require 'stattleship/params/game_logs_params'
require 'stattleship/params/basketball_game_logs_params'
require 'stattleship/params/football_game_logs_params'
require 'stattleship/params/hockey_game_logs_params'
require 'stattleship/params/total_player_stat_params'
require 'stattleship/params/basketball_total_player_stat_params'
require 'stattleship/params/football_total_player_stat_params'
require 'stattleship/params/hockey_total_player_stat_params'

require 'stattleship/game_logs'
require 'stattleship/basketball_game_logs'
require 'stattleship/football_game_logs'
require 'stattleship/hockey_game_logs'

require 'stattleship/stat_leaders'
require 'stattleship/basketball_stat_leaders'
require 'stattleship/football_stat_leaders'
require 'stattleship/hockey_stat_leaders'

require 'stattleship/total_player_stat'
require 'stattleship/basketball_total_player_stat'
require 'stattleship/football_total_player_stat'
require 'stattleship/hockey_total_player_stat'

Dotenv.load
