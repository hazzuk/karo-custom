---
icon: qbittorrent
# status: new
---

# qBittorrent

> BitTorrent client

```yaml { title="Ansible vault" }
# qbittorrent

hazzuk_media_qbittorrent_enabled: true

hazzuk_media_qbittorrent_stack:
--8<-- "karo-compose/defaults/main/hazzuk_media/qbittorrent.yml:10"
```

[See all defaults](https://github.com/hazzuk/karo-custom/blob/main/karo-compose/defaults/main/hazzuk_media/qbittorrent.yml){:target='_blank'}

??? abstract "qBittorrent - BitTorrent client"

    <div class="grid cards" markdown>

    - :simple-github: [qbittorrent/docker-qbittorrent-nox](https://github.com/qbittorrent/docker-qbittorrent-nox)
    - :simple-docker: [qbittorrentofficial/qbittorrent-nox](https://hub.docker.com/r/qbittorrentofficial/qbittorrent-nox)

    </div>

    ??? tip "qBittorrent setup"

        === "Login"

            - Obtain the generated qBittorrent web UI login credentials

                ```sh { .no-copy }
                # ssh dockeruser@homeserver.example.com
                docker logs qbittorrent
                ```

        === "New credentials"

            - Go to 'Options' > 'Web UI'
            - Username: `karo`
            - (:lucide-pointer: Press 'Save')
            - Password: `#!ini <new secure password>` (e.g. `openssl rand -hex 16`)
            - (:lucide-pointer: Press 'Save')

        === "Save path"

            - Go to 'Options' > 'Downloads'
            - Default save path: `/data/torrents`

        === "Reported IP"

            - Go to 'Options' > 'Advanced'
            - IP address reported to trackers: `#!ini <vpn's static ipv4 address>` (optional)

        === "Settings"

            - Use the following guides to configure the rest of qBittorrent:
                - Read [gluetun-wiki - 'qBittorrent'](https://github.com/qdm12/gluetun-wiki/blob/main/setup/popular-apps.md#qbittorrent)
                - Read [TRaSH Guides - 'qBittorrent Basic Setup'](https://trash-guides.info/Downloaders/qBittorrent/Basic-Setup/)

        === "Disable web UI"

            - Recreate the stack with `#!yaml webui_enabled: false`

    !!! note "Links"

        - :lucide-bookmark: [qBittorrent wiki](https://github.com/qbittorrent/qbittorrent/wiki/)
        - :lucide-tag: [Latest versions](https://www.qbittorrent.org/news)

??? abstract "qui - Modern web interface for qBittorrent"

    <div class="grid cards" markdown>

    - :simple-github: [autobrr/qui](https://github.com/autobrr/qui)
    - :lucide-container: [ghcr.io/autobrr/qui](https://ghcr.io/autobrr/qui)

    </div>

    ??? tip "qui setup"

        === "Instance"

            - Go to 'Settings' > 'Instances'

            - Add qBittorrent instance
                - Instance Name: `Homeserver`
                - URL: `http://localhost:9814`
                - Username: `karo`
                - Password: `#!ini <qbittorrent password>`

        === "Categories"

            - Go to 'Instances' > 'Homeserver' > 'Categories'

            - Add Categories (e.g. `iso`, `books`, `series`, `movies`)

                > The save path isn't required, as it'll be the [same as the category name](https://trash-guides.info/Downloaders/qBittorrent/How-to-add-categories/#paths-and-categories-breakdown).

        === "Testing"

            Test to ensure qBittorrent, qui and your VPN connection with Gluetun are all working correctly.

            - Read [TRaSH Guides - 'qBittorrent Port forwarding'](https://trash-guides.info/Downloaders/qBittorrent/Port-forwarding/)

    !!! note "Links"

        - :lucide-bookmark: [Documentation](https://getqui.com/docs/intro)
        - :lucide-tag: [Releases](https://github.com/autobrr/qui/releases)
