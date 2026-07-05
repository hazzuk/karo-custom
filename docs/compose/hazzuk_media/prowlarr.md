---
icon: prowlarr
---

# Prowlarr

> Indexer manager

<div class="grid cards" markdown>

- :simple-github: [prowlarr/prowlarr](https://github.com/prowlarr/prowlarr)
- :simple-docker: [docker.io/linuxserver/prowlarr](https://hub.docker.com/r/linuxserver/prowlarr)

</div>

```yaml
# prowlarr

karo_compose_prowlarr_enabled: false
# karo_compose_prowlarr_domain: "prowlarr.{{ karo_compose_root_domain }}"
# karo_compose_prowlarr_forward_auth_enabled: true
```

??? tip "Guide - Prowlarr authentication"

    --8<-- "snippets.md:arr_auth"

        ```sh
        # set prowlarr's auth to external
        sudo sed -i 's/Forms/External/' /home/dockeruser/.local/share/docker/volumes/prowlarr_data/_data/config.xml
        ```

??? abstract "Notes - Prowlarr settings"

    !!! info "Show advanced"
        To configure all necessary settings, enable 'Show Advanced'.

    === "Indexers"

        - Add an indexer proxy (optional)

            > As some indexers may require you to use a socks5 proxy or FlareSolverr to function correctly.

    === "Apps"

        - Add a Radarr application
            - API key: `#!ini <radarr api key>`

        - Add a Sonarr application
            - API key: `#!ini <sonarr api key>`

    === "Tags"

        - Add an indexer proxy tag (e.g. "socks5") (optional)

            > Add this if you previously setup an indexer proxy.

    === "General"

        - Host
            - Application URL: `https://prowlarr.example.com:443/`

        - Logging
            - Log level: `info`

        - Analytics
            - Send anonymous usage data: `false` (optional)

??? note "Links"

    - :lucide-bookmark: [Documentation](https://wiki.servarr.com/prowlarr)
    - :lucide-tag: [Releases](https://github.com/prowlarr/prowlarr/releases)
