---
icon: ntfy
---

# ntfy

> Notification service

<div class="grid cards" markdown>

- :simple-github: [binwiederhier/ntfy](https://github.com/binwiederhier/ntfy)
- :simple-docker: [docker.io/binwiederhier/ntfy](https://hub.docker.com/r/binwiederhier/ntfy)

</div>

```yaml
# ntfy

karo_compose_ntfy_enabled: false
# karo_compose_ntfy_domain: "ntfy.{{ karo_compose_root_domain }}"
karo_compose_ntfy_log_level: info # trace, debug, info, warn, error

karo_compose_ntfy_auth_users: "" # docs.ntfy.sh/config/#users-via-the-config
karo_compose_ntfy_auth_access: "" # docs.ntfy.sh/config/#acl-entries-via-the-config
karo_compose_ntfy_auth_tokens: "" # docs.ntfy.sh/config/#tokens-via-the-config
```

??? note "Links"

    - :lucide-bookmark: [Documentation](https://docs.ntfy.sh/)
    - :lucide-tag: [Releases](https://github.com/binwiederhier/ntfy/releases)
