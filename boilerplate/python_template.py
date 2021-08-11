'''
Boilerplate code to implement argparse in python.
'''

import argparse
import logging
# pylint: disable=import-error, no-member, invalid-name

# Get the top-level logger object
log = logging.getLogger(__name__)
logging.basicConfig(filename='log_file.log',level=logging.INFO)

log.debug("This is debug level.")
log.info("This is info level.")
log.warn("This is warning level.")
log.error("This is for error messages.")

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

