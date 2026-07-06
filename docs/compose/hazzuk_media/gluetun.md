---
icon: gluetun
---

# Gluetun

> Docker VPN client

```yaml title="Ansible vault"
# gluetun

hazzuk_media_gluetun_enabled: true

hazzuk_media_gluetun_stack:
--8<-- "karo-compose/defaults/main/hazzuk_media/gluetun.yml:10"
```

[See all defaults](https://github.com/hazzuk/karo-custom/blob/main/karo-compose/defaults/main/hazzuk_media/gluetun.yml){:target='_blank'}

??? abstract "Gluetun - Docker VPN client"

    <div class="grid cards" markdown>

    - :simple-github: [qdm12/gluetun](https://github.com/qdm12/gluetun)
    - :simple-docker: [docker.io/qmcgaw/gluetun](https://hub.docker.com/r/qmcgaw/gluetun)

    </div>

    ??? example "Example - WireGuard config"

        Your VPN service should be able to provide you with a `wireguard.conf` file.

    !!! note "Links"

        - :lucide-bookmark: [Documentation](https://github.com/qdm12/gluetun-wiki)
        - :lucide-tag: [Releases](https://github.com/qdm12/gluetun/releases)
