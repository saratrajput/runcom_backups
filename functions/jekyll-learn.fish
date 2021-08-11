function jekyll-learn
    # Open jekyll serve tab
    guake -n " " -r "jekyll" -e "cd ~/repos/learn_jekyll"
    guake -e "jekyll serve"

    # Open vim tab
    guake -n " " -r "vim" -e "cd ~/repos/learn_jekyll"

    # Open files tab
    guake -n " " -r "files" -e "cd ~/repos/learn_jekyll"

end
