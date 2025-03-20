#!/bin/bash

for i in $(seq -w 000 10 100); do
  echo "#battery.$i {
  background-image: url('/usr/share/icons/Papirus/24x24/panel/battery-$i.svg');
}
#battery.$i.charging {
  background-image: url('/usr/share/icons/Papirus/24x24/panel/battery-$i-charging.svg');
}
" >>./themes/minimal/battery.css
done
