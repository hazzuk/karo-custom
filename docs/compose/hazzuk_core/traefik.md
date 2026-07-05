---
icon: traefik
---

# Traefik

> Reverse proxy

<div class="grid cards" markdown>

- :simple-github: [traefik/traefik](https://github.com/traefik/traefik)
- :simple-docker: [docker.io/traefik](https://hub.docker.com/_/traefik)

</div>

```yaml
# traefik

# karo_compose_traefik_enabled: true
# karo_compose_traefik_dashboard_domain: "traefik.{{ karo_compose_root_domain }}"
# karo_compose_traefik_dashboard_forward_auth_enabled: true
karo_compose_traefik_log_level: debug # trace, debug, info, warn, error, fatal, panic

karo_compose_traefik_dashboard_enabled: true

karo_compose_traefik_acme_staging_enabled: true

karo_compose_traefik_acme_email: cert@example.com

karo_compose_traefik_secrets:
  traefik_acme_zone_api_token: ""
  traefik_acme_dns_api_token: ""
  tinyauth_oidc_client_secret: ""
```

??? abstract "Notes - Traefik setup"

    - The first time you run Traefik, you should keep ACME staging enabled. Once you've verified that your setup is correct, disable it to request valid TLS certificates. This is to avoid [Let's Encrypt rate limits](https://letsencrypt.org/docs/rate-limits/).

    - It's recommended to disable the Traefik dashboard when your server is exposed publicly.

    - Traefik is set to use TLS 1.3. Cipher suites are not configurable, all supported ciphers are [considered safe](https://golang.org/doc/go1.12#tls_1_3).

    - The Traefik dashboard can be useful when setting up other stacks. As you can check 'HTTP Routers' to ensure the availability of other services. 

<!--
    - Traefik creates a docker network named `frontend`. Other stacks that have a frontend web UI can use this network to route traffic through Traefik.
    
    - The `frontend` network uses an internal static IPv4 address, `172.18.0.254`. This is done to resolve external addresses internally. E.g. In Tinyauth, we want requests to the public Pocket ID OIDC domain to instead point directly at Traefik:

        ```yaml+jinja { .no-copy }
        extra_hosts:
        - "{{ karo_compose_oidc_domain }}:172.18.0.254"
        ```
-->

??? tip "Guide - Create Cloudflare API tokens for Traefik"

    > Based on the [Lego library docs](https://go-acme.github.io/lego/dns/cloudflare/index.html#api-tokens).

    --8<-- "snippets.md:cloudflare_token"

    === "`karo_compose_traefik_acme_zone_api_token`"

        - Token name

            ```
            Traefik (example.com) - Resolve domain names to Zone IDs
            ```

        - Permissions: Zone, Zone, Read

        - Zone Resources: Include, Specific zone, example.com

    === "`karo_compose_traefik_acme_dns_api_token`"

        - Token name

            ```
            Traefik (example.com) - Edit DNS for DNS-01 challenges
            ```

        - Permissions: Zone, DNS, Edit

        - Zone Resources: Include, Specific zone, example.com

??? note "Links"

    - :lucide-bookmark: [Documentation](https://doc.traefik.io/traefik/)
    - :lucide-tag: [Releases](https://github.com/traefik/traefik/releases)
    - :lucide-zap: [Migration guides](https://doc.traefik.io/traefik/migrate/v3/)
    - :lucide-clock: [Deprecation notices](https://doc.traefik.io/traefik/v3.7/deprecation/releases/)

## Tinyauth

> Authentication middleware (forward auth)

<div class="grid cards" markdown>

- :simple-github: [tinyauthapp/tinyauth](https://github.com/tinyauthapp/tinyauth)
- :lucide-container: [ghcr.io/tinyauthapp/tinyauth](https://ghcr.io/tinyauthapp/tinyauth)

</div>

```yaml
# traefik tinyauth

# karo_compose_traefik_tinyauth_domain: "tinyauth.{{ karo_compose_root_domain }}"
karo_compose_traefik_tinyauth_log_level: info # trace, debug, info, warn, error, fatal, panic

karo_compose_traefik_tinyauth_oidc_client_id: ""
```

??? note "Links"

    - :lucide-bookmark: [Documentation](https://tinyauth.app/docs/getting-started/)
    - :lucide-tag: [Releases](https://github.com/tinyauthapp/tinyauth/releases)

## CetusGuard

> Docker socket proxy

<div class="grid cards" markdown>

- :simple-github: [hectorm/cetusguard](https://github.com/hectorm/cetusguard)
- :simple-docker: [docker.io/hectorm/cetusguard](https://hub.docker.com/r/hectorm/cetusguard)

</div>

```yaml
# traefik cetusguard

karo_compose_traefik_cetusguard_log_level: 7 # 0-7 (min to max verbosity)
```

??? note "Links"

    - :lucide-tag: [Releases](https://github.com/hectorm/cetusguard/releases)
