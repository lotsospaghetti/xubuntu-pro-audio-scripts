# name: basic bit
# author: charel

function fish_prompt
    set -l last_status $status
    set -l stat
    test $last_status -ne 0; and set stat (set_color $fish_color_error)"[$last_status]"

    set -l sym (set_color $fish_color_normal)'$ '
    fish_is_root_user; and set prompt_symbol (set_color $fish_color_cwd_root)'# '

    set -l cwd (set_color $fish_color_cwd)(prompt_pwd --full-length-dirs 2)
    test $PWD = /home/$USER; and set cwd (prompt_login)

    string join ' ' -- $cwd $stat $sym
end

function fish_right_prompt
    set -g $__fish_git_prompt_show_informative_status true
    set -g $__fish_git_prompt_showupstream none
    set -g $__fish_git_prompt_showcolorhints true

    echo -n (fish_git_prompt)
end
