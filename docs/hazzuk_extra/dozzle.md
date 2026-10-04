---
# SPDX-FileCopyrightText: © 2026 hazzuk
#
# SPDX-License-Identifier: AGPL-3.0-only

icon: custom/dozzle
---

# Dozzle

> Realtime log viewer for containers

``` yaml { title="Ansible vault" }
# dozzle

hazzuk_extra_dozzle_enabled: false

hazzuk_extra_dozzle_stack:
--8<-- "karo-compose/defaults/main/hazzuk_extra/dozzle.yml:10"
```

[See all defaults](https://github.com/hazzuk/karo-custom/blob/main/karo-compose/defaults/main/hazzuk_extra/dozzle.yml){:target='_blank'}

??? abstract "Dozzle - Realtime log viewer for containers"

    <div class="grid cards" markdown>

    - :simple-github: [amir20/dozzle](https://github.com/amir20/dozzle)
    - :simple-docker: [docker.io/amir20/dozzle](https://hub.docker.com/r/amir20/dozzle)

    </div>

    ??? tip "Dozzle OIDC setup"

        See [dozzle.dev/guide/authentication/oidc](https://dozzle.dev/guide/authentication/oidc)

        Edit your Pocket ID user,
        adding the following custom claim: `dozzle_roles` `all`

    !!! note "Links"

        - :lucide-bookmark: [Documentation](https://dozzle.dev/guide/what-is-dozzle)
        - :lucide-tag: [Releases](https://github.com/amir20/dozzle/releases)
