function zsh_greeting {
    echo
    echo -e "$(uname -ro | awk '{print " \\e[1mOS: \\e[0;32m"$0"\\e[0m"}')"
    echo -e "$(uptime -p | sed 's/^up //' | awk '{print " \\e[1mUptime: \\e[0;32m"$0"\\e[0m"}')"
    echo -e "$(uname -n | awk '{print " \\e[1mHostname: \\e[0;32m"$0"\\e[0m"}')"
    echo -e " \\e[1mDisk usage:\\e[0m"
    echo
    echo -ne "$(df -l -h | grep -E 'dev/(xvda|sd|mapper)' | \
        awk '{printf "\\t%s\\t%4s / %4s  %s\\n", $6, $3, $2, $5}' | \
        sed -e 's/^\(.*\([8][5-9]\|[9][0-9]\)%.*\)$/\\e[0;31m\1\\e[0m/' -e 's/^\(.*\([7][5-9]\|[8][0-4]\)%.*\)$/\\e[0;33m\1\\e[0m/' | \
        paste -sd '')"
    echo

    echo -e " \\e[1mNetwork:\\e[0m"
    echo
    echo -ne "$(ip addr show up scope global | \
        grep -E ': <|inet' | \
        sed \
            -e 's/^[[:digit:]]\+: //' \
            -e 's/: <.*//' \
            -e 's/.*inet[[:digit:]]* //' \
            -e 's/\/.*//' | \
        awk 'BEGIN {i=""} /\.|:/ {print i" "$0"\\n"; next} // {i = $0}' | \
        sort | \
        column -t -R1 | \
        sed 's/ \([^ ]\+\)$/ \\e[4m\1/' | \
        sed 's/m\(\(10\.\|172\.\(1[6-9]\|2[0-9]\|3[01]\)\|192\.168\.\).*\)/m\\e[24m\1/' | \
        sed 's/^\( *[^ ]\+\)/\\e[36m\1/' | \
        sed 's/\(\(en\|em\|eth\)[^ ]* .*\)/\\e[39m\1/' | \
        sed 's/\(wl[^ ]* .*\)/\\e[35m\1/' | \
        sed 's/\(ww[^ ]* .*\).*/\\e[33m\1/' | \
        sed 's/$/\\e[0m/' | \
        sed 's/^/\\t/')"
    echo

    # 10%
    local r=$(( RANDOM % 101 ))
    # if [ $r -lt 5 ]; then
    #     echo -e "\\e[34m  Haskell: learning functional languages."
    #     echo
    # fi

    echo -e "\\e[0m \\e[1mTODOs\\e[0;32m"
    echo

    # 15%
    # local r=$(( RANDOM % 101 ))
    # if [ $r -lt 15 ]; then
    #     echo -e "\\e[36m  Compiler: writing Cool clone language (maybe in C)?"
    # fi
    # local r=$(( RANDOM % 101 ))
    # if [ $r -lt 15 ]; then
    #     echo -e "\\e[36m  Interpreter: writing Rust clone language (maybe in Zig)?"
    # fi

    # 25%
    # local r=$(( RANDOM % 101 ))
    # if [ $r -lt 25 ]; then
    #     echo -e "\\e[32m  RayTracer: finishing ray_tracing_the_next_week project."
    # fi
    # local r=$(( RANDOM % 101 ))
    # if [ $r -lt 25 ]; then
    #     echo -e "\\e[32m  Chatter: making social media app clone in Java."
    # fi

    # 50%
    # local r=$(( RANDOM % 101 ))
    # if [ $r -lt 50 ]; then
    #     echo -e "\\e[33m  Algorithms: all algorithms implemented in C."
    # fi

    # 100%
    echo -e "\\e[31m  SOI - doing ex. no. 1"
    echo -e "\\e[31m  WUS - doing ex. no. 1."
    echo -e "\\e[31m  PARP - finishing prolog project."
    echo -e "\\e[31m  BSS - finding the 2 last flags."
    echo -e "\\e[31m  ZPR - doing prototype of the program."

    if [ -s ~/todo ]; then
        echo -e "\\e[35m"
        sed 's/^/ /' ~/todo
        echo
    fi

    echo -e "\\e[0m"
}

zsh_greeting

