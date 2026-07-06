---
icon: lucide/globe
---

# GoDNS

> Dynamic DNS client

```yaml title="Ansible vault"
# godns

hazzuk_extra_godns_enabled: true

hazzuk_extra_godns_stack:
--8<-- "karo-compose/defaults/main/hazzuk_extra/godns.yml:10"
```

[See all defaults](https://github.com/hazzuk/karo-custom/blob/main/karo-compose/defaults/main/hazzuk_extra/godns.yml){:target='_blank'}

??? abstract "GoDNS - Dynamic DNS client"

    <div class="grid cards" markdown>

    - :simple-github: [timothyye/godns](https://github.com/timothyye/godns)
    - :simple-docker: [docker.io/timothyye/godns](https://hub.docker.com/r/timothyye/godns)

    </div>

    ??? tip "Guide - Create a Cloudflare API token for GoDNS"

        --8<-- "includes/snippets.md:cloudflare_token"

        === "`karo_compose_godns_dns_api_token`"

            - Token name

                ```
                GoDNS (example.com) - Edit dynamic DNS record
                ```

            - Permissions: Zone, DNS, Edit

            - Zone Resources: Include, Specific zone, example.com

    !!! note "Links"

        - :lucide-tag: [Releases](https://github.com/timothyye/godns/releases)
