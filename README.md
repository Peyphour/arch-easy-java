# Description

This little script will help you switch between your Java versions. (I know you're tired of typing `sudo archlinux-java set ....` each time)

For each versions of Java, it will create a bash script in `/usr/bin` called `java${version}` and make it executable.
Those scripts will call `archlinux-java` for you.

So to change versions, you will type for example `java7` instead of `sudo archlinux-java set openjdk-7-jdk`.
