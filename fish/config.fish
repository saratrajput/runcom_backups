direnv hook fish | source

if not status is-interactive
    exec bash
end
