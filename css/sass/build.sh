#/bin/sh

##############################################################################
# Configuration variables needed by the project
##############################################################################

PREREQ_EXEC=(sass)

FILES=(home download about)

##############################################################################
# Verify if PREREQ_EXEC are installed
##############################################################################

prereq_error() {
    echo >&2 "Error: '$1' is required but not found."
    exit 1
}

for EXEC in "${PREREQ_EXEC[@]}"
do
    echo "Checking '$EXEC'..."
    command -v $EXEC >/dev/null 2>&1 || prereq_error $EXEC
done


for FILE in "${FILES[@]}"
do
    echo "Building '$FILE.sass'..."
    command sass $FILE.sass ../$FILE.css
done

echo "Stylesheets built."
