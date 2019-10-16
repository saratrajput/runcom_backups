'''
Boilerplate code to implement argparse in python.
'''

import argparse

if __name__ == "__main__":
    # Parse arguments
    parser = argparse.ArgumentParser()

    # Required positional argument
    parser.add_argument("arg", type=str, help="Required positional argument")

    # Optional argument flag which defaults to False
    parser.add_argument("-f", "--flag", action="store_true", default=False)

    # Optional argument which requires a parameter (eg. -d test)
    parser.add_argument("-n", "--name", action="store", dest="name")

    # Optional verbosity counter (eg. -v, -vv, -vvv, etc.)
    parser.add_argument(
            "-v",
            "--verbose",
            action="count",
            default=0,
            help="Verbosity (-v, -vv, etc)")

    # Specify output of "--version"
    parser.add_argument(
            "--version",
            action="version",
            version="%(prog)s (version {version})".format(version=__version__))

    parser.add_argument("-i", "--input", dest="input_dir",
                        help="Input csv file")
    parser.add_argument("-t", "--title", dest="plot_title",
                        help="Title for plot")
    parser.add_argument("-s", "--step", type=int, dest="plot_step",
                        help="Steps in X-axis plot")

    args = parser.parse_args()

    main(args)
