function _fzf_atuin_history
  atuin history list --reverse=false --format "{time} | {duration} | {command}" \
    | _fzf_wrapper -q ""
end
