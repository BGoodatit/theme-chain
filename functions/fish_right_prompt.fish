function fish_right_prompt
  # Battery status with different symbols depending on state
  set battery_status (battery)
  switch "$battery_status"
    case '*Discharging*'
      set battery_symbol ''
    case '*Charging*'
      set battery_symbol ''
    case '*Fully charged*'
      set battery_symbol ''
  end

  # Display battery status
  echo -n (set_color cyan) "$battery_symbol $battery_status"

  # Display time
  set current_time (date '+%H:%M')
  echo -n (set_color yellow) " $current_time"
end
