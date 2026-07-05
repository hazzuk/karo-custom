---
icon: radarr
---

# Radarr

> Movie collection manager

<div class="grid cards" markdown>

- :simple-github: [radarr/radarr](https://github.com/Radarr/Radarr)
- :simple-docker: [docker.io/linuxserver/radarr](https://hub.docker.com/r/linuxserver/radarr)

</div>

```yaml
# radarr

karo_compose_radarr_enabled: false
# karo_compose_radarr_domain: "radarr.{{ karo_compose_root_domain }}"
# karo_compose_radarr_forward_auth_enabled: true

karo_compose_radarr_data_path: "" # e.g. /media/drive1/data
```

??? tip "Guide - Radarr authentication"

    --8<-- "includes/snippets.md:arr_auth"

        ```sh
        # set radarr's auth to external
        sudo sed -i 's/Forms/External/' /home/dockeruser/.local/share/docker/volumes/radarr_data/_data/config.xml
        ```

??? abstract "Notes - Radarr settings"

    !!! info "Show advanced"
        To configure all necessary settings, enable 'Show Advanced'.

    === "Media management"

        - Add root folder: `/data/media/movies`

        - Read [TRaSH Guides - 'Radarr Recommended Naming Scheme'](https://trash-guides.info/Radarr/Radarr-recommended-naming-scheme/)

    === "Profiles"

        - Read [TRaSH Guides - 'Radarr How to set up Quality Profiles'](https://trash-guides.info/Radarr/radarr-setup-quality-profiles/) (optional)

    === "Indexers"

        - Options
            - RSS sync interval: `0` (optional)

                > Set this to disable all automatic release grabbing.

        - (Setup torrent indexers in Prowlarr if you haven't already)

    === "Download clients"

        !!! info "qui client proxy"
    
            - Go to 'qui' > 'Settings' > 'Client Proxy'
            - Create client API key
                - Client name: `radarr`
                - qBittorrent instance: `main`

        - Add qBittorrent download client
            - Host: `localhost`
            - Port: `7476`
            - URL base: `#!ini /proxy/<qui client proxy radarr api key>`
            - Category: `movies`
            - Remove completed: `false`

    === "Metadata"

        - Options
            - Certification country: `#!ini <your region>`

    === "General"

        - Host
            - Application URL: `https://radarr.example.com:443/`

        - Logging
            - Log level: `info`

        - Analytics
            - Send anonymous usage data: `false` (optional)

??? note "Links"

    - :lucide-bookmark: [Documentation](https://wiki.servarr.com/radarr)
    - :lucide-tag: [Releases](https://github.com/radarr/radarr/releases)
