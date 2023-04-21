function cookiecutter-new-project
    set -l branch $argv[1] 
    # argparse 'h/help' 'n/name' -- $argv
    echo $branch

    # if $branch match -e "master"
    if "$branch" = "master"
    # if $branch match -e "master"
        echo "Using master branch."
        cookiecutter git@bitbucket.org:octochef0/cr_py_project_template.git --checkout master;
    else if $branch -eq "library"
        echo "Creating a Python library."
        cookiecutter git@bitbucket.org:octochef0/cr_py_project_template.git --checkout library;
    else
        echo "No branch given. Using master branch."
        cookiecutter git@bitbucket.org:octochef0/cr_py_project_template.git;
    end

end
