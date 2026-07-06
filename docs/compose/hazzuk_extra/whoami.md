---
icon: lucide/file-question-mark
---

# whoami

> Tiny web server for testing

```yaml title="Ansible vault"
# whoami

hazzuk_extra_whoami_enabled: true

hazzuk_extra_whoami_stack:
--8<-- "karo-compose/defaults/main/hazzuk_extra/whoami.yml:10"
```

[See all defaults](https://github.com/hazzuk/karo-custom/blob/main/karo-compose/defaults/main/hazzuk_extra/whoami.yml){:target='_blank'}

??? abstract "whoami - Tiny web server for testing"

    <div class="grid cards" markdown>

    - :simple-github: [traefik/whoami](https://github.com/traefik/whoami)
    - :simple-docker: [docker.io/traefik/whoami](https://hub.docker.com/r/traefik/whoami)

    </div>

    !!! note "Links"

        - :lucide-tag: [Releases](https://github.com/traefik/whoami/releases)
