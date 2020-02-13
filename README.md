## Overview

[Stock SELinux Policy (container-selinux)](https://github.com/containers/container-selinux/blob/562455891442021c87f1e191b74775b9975f587a/container.te)

This is an SELinux policy granting access to the Docker socket from within containers.

#### DANGER

Containers with a docker socket mounted effectively have root access to the host system!

An option with smaller scope would be to label your trusted containers within the SELinux context of the container runtime.
