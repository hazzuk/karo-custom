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

<!--
??? abstract "Notes - Jellyfin SSO"

    === "Plugin"

        !!! info

            Jellyfin requires a [third party plugin](https://github.com/9p4/jellyfin-plugin-sso) for SSO functionality.

            Only for the Web UI or clients supporting [Quick Connect](https://jellyfin.org/docs/general/server/quick-connect/).

        - Go to 'Dashboard' > 'Plugins' > 'Manage Repositories' > 'New Repository'
            - Repository name:
            ```
            Jellyfin SSO
            ```
            - Repository URL:
            ```
            https://raw.githubusercontent.com/9p4/jellyfin-plugin-sso/manifest-release/manifest.json
            ```
        - Install the `SSO-Auth` plugin
        - Restart Jellyfin
        - Follow this [Pocket-ID guide](https://pocket-id.org/docs/client-examples/jellyfin)

    === "Branding"

        You'll need to create a login button for the Web UI login page.

        - Go to 'Dashboard' > 'Branding'

        - Copy and modify the following HTML:

            ```html { title="Login disclaimer" }
            <!-- Safely ignore this, use Quick Connect -->
            <br>
            <form action="https://jellyfin.example.com/sso/OID/start/pocketid">
                <button class="raised block emby-button button-submit">
                    <img class="auth-logo" src="https://auth.example.com/api/application-images/logo?light=false" alt="Logo">
                    Sign in with SSO
                </button>
            </form>
            <p>(Web only)</p>
            ```

        - Copy the following CSS:

            ```css { title="Custom CSS code" }
            /* original sign-in button */
            .manualLoginForm .button-submit {
                background: gray;
            }

            /* quick connect button */
            .btnQuick {
                background: darkslategray;
                margin-bottom: 6px !important;
            }

            /* buttons */
            a.raised.emby-button {
                padding: 0.9em 1em;
                color: inherit !important;
            }

            /* injected html container */
            .disclaimerContainer {
                display: block;
            }

            /* sso button */
            .loginDisclaimer .button-submit {
                border-radius: 8px;
                display: flex;
            }

            /* sso logo */
            .auth-logo {
                width: 22px;
                margin-right: 9px;
            }
            ```
-->

??? note "Links"

    - :lucide-bookmark: [Documentation](https://jellyfin.org/docs/)
    - :lucide-tag: [Releases](https://github.com/jellyfin/jellyfin/releases)
