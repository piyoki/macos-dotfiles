function _fzf_gopass
  set QUERY $1
  if [ -z "$QUERY" ]
    set QUERY ''
  end
  gopass show -c \
    (gopass ls --flat \
      | _fzf_wrapper -q "$QUERY" \
    )
end
