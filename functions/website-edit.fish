function website-edit
    # Open jekyll serve tab
    guake -n " " -r "jekyll" -e "cd ~/repos/saratrajput.github.io"
    guake -e "conda activate test_env"
    guake -e "bundler exec jekyll serve"

    # Open README tab
    #guake -n " " -r "README" -e "cd ~/repos/saratrajput.github.io"
    #guake -e "conda activate test_env"
    #guake -e "retext _README.md"

    # Open vim tab
    guake -n " " -r "vim" -e "cd ~/repos/saratrajput.github.io"

    # Open files tab
    guake -n " " -r "files" -e "cd ~/repos/saratrajput.github.io"

    # Open images tab
    guake -n " " -r "images" -e "cd ~/repos/saratrajput.github.io/images"

    # Open old site tab
    guake -n " " -r "old_site" -e "cd ~/repos/old_site"

end
