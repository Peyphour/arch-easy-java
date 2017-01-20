#!/bin/bash

LIST=$(ls /usr/lib/jvm | grep java)

while IFS='-' read -ra JVM; do
        JAVA_VERSION="java${JVM[1]}"
        echo "Found java $JAVA_VERSION"
        echo "Creating /usr/bin/java${JVM[1]}"
        echo -e "#!/bin/bash\nsudo archlinux-java set ${JVM[0]}-${JVM[1]}-${JVM[2]}" >> /usr/bin/$JAVA_VERSION
        echo "Chmoding +x file"
        chmod +x /usr/bin/$JAVA_VERSION
done <<< "$LIST"
