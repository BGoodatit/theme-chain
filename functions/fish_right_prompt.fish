function fish_right_prompt
  # Battery status with different symbols depending on state
  set battery (upower -i $(upower -e | grep 'BAT') | grep -E "state|to full|percentage")
  set battery_symbol '' # Default to fully charged symbol
  echo "$battery" | grep -q "discharging"
  and set battery_symbol ''
  echo "$battery" | grep -q "charging"
  and set battery_symbol ''

  # Display battery status and symbol
  set battery_percentage (echo "$battery" | grep 'percentage' | awk '{print $2}')
  echo -n (set_color cyan) "$battery_symbol $battery_percentage"

  # Display time
  set current_time (date '+%H:%M')
  echo -n (set_color yellow) " $current_time"
end

  set current_time (date '+%H:%M')
  echo -n (set_color yellow) " $current_time"
end
