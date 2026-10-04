---
# SPDX-FileCopyrightText: © 2026 hazzuk
#
# SPDX-License-Identifier: AGPL-3.0-only

icon: simple/ntfy
---

# ntfy

> Notification service

``` yaml { title="Ansible vault" }
# ntfy

karolabs_ops_ntfy_enabled: false

karolabs_ops_ntfy_stack:
--8<-- "karo-compose/defaults/main/karolabs_ops/ntfy.yml:10"
```

[See all defaults](https://github.com/karolabs/karo-custom/blob/main/karo-compose/defaults/main/karolabs_ops/ntfy.yml){:target='_blank'}

??? abstract "ntfy - Notification service"

    <div class="grid cards" markdown>

    - :simple-github: [binwiederhier/ntfy](https://github.com/binwiederhier/ntfy)
    - :simple-docker: [docker.io/binwiederhier/ntfy](https://hub.docker.com/r/binwiederhier/ntfy)

    </div>

    !!! note "Links"

        - :lucide-bookmark: [Documentation](https://docs.ntfy.sh/)
        - :lucide-tag: [Releases](https://github.com/binwiederhier/ntfy/releases)
