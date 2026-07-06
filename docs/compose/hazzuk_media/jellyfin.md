---
icon: jellyfin
---

# Jellyfin

> Media server

<div class="grid cards" markdown>

- :simple-github: [jellyfin/jellyfin](https://github.com/jellyfin/jellyfin)
- :simple-docker: [docker.io/jellyfin/jellyfin](https://hub.docker.com/r/jellyfin/jellyfin)

</div>

```yaml
# jellyfin

karo_compose_jellyfin_enabled: false
# karo_compose_jellyfin_domain: "jellyfin.{{ karo_compose_root_domain }}"

karo_compose_jellyfin_movies_media_path: "" # e.g. /media/drive1/data/media/movies
karo_compose_jellyfin_series_media_path: "" # e.g. /media/drive1/data/media/series
```

??? abstract "Notes - Jellyfin initial setup"

    === "Server"

        - Server name: `example`
        - Username: `#!ini <jellyfin admin username>`
        - Password: `#!ini <jellyfin admin password>`

    === "Media"

        - Movies
            - Folders: `#!ini <radarr root folder>` (e.g. `/data/media/movies`)
            - Preferred download language: `#!ini <your language>`
            - Country/region: `#!ini <your region>`

        - TV
            - Display name: `Series`
            - Folders: `#!ini <sonarr root folder>` (e.g. `/data/media/series`)
            - Preferred download language `#!ini <your language>`
            - Country/region `#!ini <your region>`

    === "Metadata language"

        - Country/region: `#!ini <your region>`

    === "Remote access"

        - Allow remote connections to this server: `false`

??? note "Links"

    - :lucide-bookmark: [Documentation](https://jellyfin.org/docs/)
    - :lucide-tag: [Releases](https://github.com/jellyfin/jellyfin/releases)
