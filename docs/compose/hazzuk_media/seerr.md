---
icon: seerr
---

# Seerr

> Media requests and discovery manager

<div class="grid cards" markdown>

- :simple-github: [seerr-team/seerr](https://github.com/seerr-team/seerr)
- :lucide-container: [ghcr.io/seerr-team/seerr](https://ghcr.io/seerr-team/seerr)

</div>

```yaml
# seerr

karo_compose_seerr_enabled: false
# karo_compose_seerr_domain: "seerr.{{ karo_compose_root_domain }}"
karo_compose_seerr_log_level: info # debug, info, warn, error
```

!!! warning

    The Seerr stack is undergoing changes and should be considered experimental.

    This is due to the recent [migration from Jellyseerr](https://docs.seerr.dev/migration-guide), and early adoption of OIDC ([pull request](https://github.com/seerr-team/seerr/pull/2715), [discussion](https://github.com/seerr-team/seerr/discussions/2721)).

??? abstract "Notes - Seerr initial setup"

    === "Jellyfin"

        - URL: `jellyfin`
        - Port: `8096`
        - Email: `username@example.com`
        - Username: `#!ini <jellyfin admin username>`
        - Password: `#!ini <jellyfin admin password>`

    === "Sync libraries"

        - Jellyfin external URL: `https://jellyfin.example.com`
        - Sync libraries:
            - Movies: `Enabled`
            - Series: `Enabled`

    === "Radarr server"

        - Default server: `true`
        - Server name: `Radarr`
        - Hostname: `gluetun`
        - Port: `7878`
        - API key: `#!ini <radarr api key>`
        - External URL: `https://radarr.example.com`
        - Enable automatic search: `false`
        - (:lucide-pointer: Press 'Test')
        - Quality profile: `HD-1080p`
        - Root folder: `#!ini <radarr root folder>` (e.g. `/data/media/movies`)

    === "Sonarr server"

        - Default server: `true`
        - Server name: `Sonarr`
        - Hostname: `gluetun`
        - Port: `8989`
        - API key: `#!ini <sonarr api key>`
        - Season folders: `true`
        - External URL: `https://sonarr.example.com`
        - Enable automatic search: `false`
        - (:lucide-pointer: Press 'Test')
        - Quality profile: `HD - 720p/1080p`
        - Root folder: `#!ini <sonarr root folder>` (e.g. `/data/media/series`)

??? abstract "Notes - Seerr settings"

    === "General"

        - App title: `Seerr`
        - App URL: `https://seerr.example.com`
        - Discover language: `#!ini <your language>`
        - Streaming region: `#!ini <your region>`
        - Allow special episodes requests: `true`

    === "Network"

        - Enable proxy support: `true`
        - Enable CSRF protection: `true`

    === "Users"

        !!! warning

            This information may be outdated, see notice above.

        !!! info "Pocket-ID OIDC client"
    
            - Name: `Seerr`
            - Client launch URL: `https://seerr.example.com/login?provider=pocketid`
            - Callback URL: `https://seerr.example.com/login`
            - (:lucide-pointer: Select allowed user groups)

        - Add new OpenID Connect provider
            - Provider name: `pocketid`
            - Logo: `https://auth.example.com/api/application-images/logo?light=false`
            - Issuer URL: `https://auth.example.com`
            - Client ID: `#!ini <pocketid seerr client id>`
            - Client secret: `#!ini <pocketid seerr client secret>`
            - Scopes: `openid email profile groups`
            - Allow new users: `true`

        - Edit your user and link your account

??? note "Links"

    - :lucide-bookmark: [Documentation](https://docs.seerr.dev/)
    - :lucide-tag: [Releases](https://github.com/seerr-team/seerr/releases)
