---
icon: pocket-id
---

# Pocket ID

> OIDC provider

```yaml { title="Ansible vault" }
# oidc

# karo_compose_oidc_subdomain: auth
# karo_compose_oidc_provider_name: PocketID
# karo_compose_oidc_admin_group: admin

# pocketid

hazzuk_core_pocketid_enabled: true

hazzuk_core_pocketid_stack:
--8<-- "karo-compose/defaults/main/hazzuk_core/pocketid.yml:10"
```

[See all defaults](https://github.com/hazzuk/karo-custom/blob/main/karo-compose/defaults/main/hazzuk_core/pocketid.yml){:target='_blank'}

??? abstract "Pocket ID - OIDC provider"

    <div class="grid cards" markdown>

    - :simple-github: [pocket-id/pocket-id](https://github.com/pocket-id/pocket-id)
    - :lucide-container: [ghcr.io/pocket-id/pocket-id](https://ghcr.io/pocket-id/pocket-id)

    </div>

    !!! note "Links"

        - :lucide-bookmark: [Documentation](https://pocket-id.org/docs/introduction)
        - :lucide-tag: [Releases](https://github.com/pocket-id/pocket-id/releases)
