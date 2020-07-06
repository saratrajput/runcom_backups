import logging

# Get the top-level logger object
log = logging.getLogger(__name__)
logging.basicConfig(filename='log_file.log',level=logging.INFO)

log.debug("This is debug level.")
log.info("This is info level.")
log.warn("This is warning level.")
log.error("This is for error messages.")
