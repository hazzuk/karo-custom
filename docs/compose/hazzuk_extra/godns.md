---
icon: lucide/globe
---

# GoDNS

> Dynamic DNS client

<div class="grid cards" markdown>

- :simple-github: [timothyye/godns](https://github.com/timothyye/godns)
- :simple-docker: [docker.io/timothyye/godns](https://hub.docker.com/r/timothyye/godns)

</div>

```yaml
# godns

karo_compose_godns_enabled: false
# karo_compose_godns_debug_info_enabled: false

karo_compose_godns_subdomain: dyndns

karo_compose_godns_secrets:
  godns_dns_api_token: ""
```

??? tip "Guide - Create a Cloudflare API token for GoDNS"

    --8<-- "snippets.md:cloudflare_token"

    === "`karo_compose_godns_dns_api_token`"

        - Token name

            ```
            GoDNS (example.com) - Edit dynamic DNS record
            ```

        - Permissions: Zone, DNS, Edit

        - Zone Resources: Include, Specific zone, example.com

??? note "Links"

    - :lucide-tag: [Releases](https://github.com/timothyye/godns/releases)
