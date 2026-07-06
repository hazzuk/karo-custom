---
icon: traefik
---

# Traefik

> Reverse proxy

```yaml { title="Ansible vault" }
# traefik

hazzuk_core_traefik_enabled: true

hazzuk_core_traefik_stack:
--8<-- "karo-compose/defaults/main/hazzuk_core/traefik.yml:10:24,27"
```

[See all defaults](https://github.com/hazzuk/karo-custom/blob/main/karo-compose/defaults/main/hazzuk_core/traefik.yml){:target='_blank'}

??? abstract "Traefik - Reverse proxy"

    <div class="grid cards" markdown>

    - :simple-github: [traefik/traefik](https://github.com/traefik/traefik)
    - :simple-docker: [docker.io/traefik](https://hub.docker.com/_/traefik)

    </div>

    ??? info "Traefik notes"

        - The first time you run Traefik, you should keep ACME staging enabled. Once you've verified that your setup is correct, disable it to request valid TLS certificates. This is to avoid [Let's Encrypt rate limits](https://letsencrypt.org/docs/rate-limits/).

        - It's recommended to disable the Traefik dashboard when your server is exposed publicly.

        - Traefik is set to use TLS 1.3. Cipher suites are not configurable, supported ciphers are [safe](https://golang.org/doc/go1.12#tls_1_3).

        - The Traefik dashboard can be useful when setting up other stacks. As you can check 'HTTP Routers' to ensure the availability of other services.

    ??? tip "Traefik Cloudflare API tokens"

        > Based on the [Lego library docs](https://go-acme.github.io/lego/dns/cloudflare/index.html#api-tokens).

        --8<-- "includes/snippets.md:cloudflare_token"

        === "`traefik_acme_zone_api_token`"

            - Token name

                ```
                Traefik (example.com) - Resolve domain names to Zone IDs
                ```

            - Permissions: Zone, Zone, Read

            - Zone Resources: Include, Specific zone, example.com

        === "`traefik_acme_dns_api_token`"

            - Token name

                ```
                Traefik (example.com) - Edit DNS for DNS-01 challenges
                ```

            - Permissions: Zone, DNS, Edit

            - Zone Resources: Include, Specific zone, example.com

    !!! note "Links"

        - :lucide-bookmark: [Documentation](https://doc.traefik.io/traefik/)
        - :lucide-tag: [Releases](https://github.com/traefik/traefik/releases)
        - :lucide-zap: [Migration guides](https://doc.traefik.io/traefik/migrate/v3/)
        - :lucide-clock: [Deprecation notices](https://doc.traefik.io/traefik/v3.7/deprecation/releases/)

??? abstract "Tinyauth - Authentication middleware (forward auth)"

    <div class="grid cards" markdown>

    - :simple-github: [tinyauthapp/tinyauth](https://github.com/tinyauthapp/tinyauth)
    - :lucide-container: [ghcr.io/tinyauthapp/tinyauth](https://ghcr.io/tinyauthapp/tinyauth)

    </div>

    !!! note "Links"

        - :lucide-bookmark: [Documentation](https://tinyauth.app/docs/getting-started/)
        - :lucide-tag: [Releases](https://github.com/tinyauthapp/tinyauth/releases)

??? abstract "CetusGuard - Docker socket proxy"

    <div class="grid cards" markdown>

    - :simple-github: [hectorm/cetusguard](https://github.com/hectorm/cetusguard)
    - :simple-docker: [docker.io/hectorm/cetusguard](https://hub.docker.com/r/hectorm/cetusguard)

    </div>

    !!! note "Links"

        - :lucide-tag: [Releases](https://github.com/hectorm/cetusguard/releases)
