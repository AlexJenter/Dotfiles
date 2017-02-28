# https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
# https://github.com/michaeldfallen/git-radar#configuration-values
# white=$(tput setaf 255)
# whitebg=$(tput setab 255)
# red=$(tput setaf 197)
# green=$(tput setaf 118)
#
# branch=$red$whitebg
# octo=$white$(tput setab 197)
#
# export GIT_RADAR_COLOR_BRANCH=$branch
# export GIT_RADAR_COLOR_LOCAL_AHEAD=$green
# export GIT_RADAR_COLOR_CHANGES_UNSTAGED=$red
export GIT_RADAR_FORMAT="  [%{remote}%{branch}%{ :local}]%{ :changes}%{ :stash}"
