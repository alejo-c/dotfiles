#                _ _
# __      ____ _| | |_ __   __ _ _ __   ___ _ __
# \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__|
#  \ V  V / (_| | | | |_) | (_| | |_) |  __/ |
#   \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|
#                   |_|         |_|
#
# -----------------------------------------------------

# Cache file for holding the current wallpaper
cache_file="$HOME/.cache/current_wallpaper"
blurred="$HOME/.cache/blurred_wallpaper.png"
rasi_file="$HOME/.cache/current_wallpaper.rasi"

blur="50x30"

# Create cache file if not exists
if [ ! -f "$cache_file" ]; then
  echo "$HOME/pictures/wallpapers/default.jpg" >"$cache_file"
fi

# Create rasi file if not exists
if [ ! -f "$rasi_file" ]; then
  echo "* { current-image: url(\"$HOME/pictures/wallpapers/default.jpg\", height); }" >"$rasi_file"
fi

current_wallpaper=$(cat "$cache_file")

case "$1" in
# Load wallpaper from .cache of last session
"init")
  if [ -f "$cache_file" ]; then
    wal -q -i "$current_wallpaper"
  else
    wal -q -i ~/pictures/wallpapers/
  fi
  ;;

# Randomly select wallpaper
*)
  if [ -n "$1" ]; then
    wal -q -i "$1"
  else
    wal -q -i ~/pictures/wallpapers/
  fi
  ;;
esac

# -----------------------------------------------------
# Load current pywal color scheme
# -----------------------------------------------------
source "$HOME/.cache/wal/colors.sh"
# sed -i 's/\(active_border_color \).*/\1'"$color4/" $HOME/.config/kitty/kitty.conf
# killall -s SIGUSR1 kitty

echo ":: Wallpaper: $wallpaper"

# -----------------------------------------------------
# get wallpaper image name
# -----------------------------------------------------
newwall=$(echo "$wallpaper" | sed "s|$HOME/pictures/wallpapers/||g")

# -----------------------------------------------------
# Set the new wallpaper
# -----------------------------------------------------
# transition_type="wipe"
# transition_type="outer"
transition_type="random"

wallpaper_engine=$(cat "$HOME/dotfiles/.settings/wallpaper-engine")
if [ "$wallpaper_engine" == "swww" ]; then
  # swww
  # sh ~/dotfiles/hypr/scripts/monitor/change-resolution.sh
  # sleep .4
  echo ":: Using swww"
  swww img "$wallpaper" \
    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type=$transition_type \
    --transition-duration=0.7 \
    --transition-pos "$(hyprctl cursorpos)"

  # sleep .4
  # sh ~/dotfiles/hypr/scripts/monitor/restore-resolution.sh
elif [ "$wallpaper_engine" == "hyprpaper" ]; then
  # hyprpaper
  echo ":: Using hyprpaper"
  wal_tpl=$(cat "$HOME/dotfiles/.settings/hyprpaper.tpl")
  output=${wal_tpl//WALLPAPER/$wallpaper}
  echo "$output" >"$HOME/.config/hypr/hyprpaper.conf"
  killall hyprpaper
  hyprpaper &
else
  echo ":: Wallpaper Engine disabled"
fi

# -----------------------------------------------------
# Created blurred wallpaper
# -----------------------------------------------------
if [ "$1" == "init" ]; then
  echo ":: Init"
else
  dunstify "Creating blurred version ..." "with image $newwall" -h int:value:66 -h string:x-dunst-stack-tag:wallpaper
fi

magick "$wallpaper" -resize 75% "$blurred"
echo ":: Resized to 75%"
if [ ! "$blur" == "0x0" ]; then
  magick "$blurred" -blur "$blur" "$blurred"
  echo ":: Blurred"
fi

# -----------------------------------------------------
# Write selected wallpaper into .cache files
# -----------------------------------------------------
echo "$wallpaper" >"$cache_file"
# echo "* { current-image: url(\"$blurred\", height); }" >"$rasi_file"

# -----------------------------------------------------
# Send notification
# -----------------------------------------------------

if [ "$1" == "init" ]; then
  echo ":: Init"
else
  dunstify "Wallpaper procedure complete!" "with image $newwall" -h int:value:100 -h string:x-dunst-stack-tag:wallpaper
fi

echo "DONE!"
