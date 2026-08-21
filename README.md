# hazzuk/karo-custom

**Custom [karo-stack](https://docs.karolabs.dev/) files**

[![GitHub Release](https://img.shields.io/github/v/release/hazzuk/karo-custom?display_name=tag&cacheSeconds=7200)](https://github.com/hazzuk/karo-custom/releases)
[![License](https://img.shields.io/badge/license-AGPL--3.0-orange)](https://github.com/hazzuk/karo-custom/blob/main/LICENSE)

[![Developed by Humans, Not by AI](not-by-ai.png)](https://notbyai.fyi/)

> This is the official [karo-custom](https://docs.karolabs.dev/custom/) repo, maintained by the creator of the karo-stack.

1. Get this custom repo
    ```sh
    just custom get hazzuk
    ```

2. Add these variables
    ```sh
    just vault homeserver
    ```
    ```yaml { title="Ansible vault" }
    karo_compose_stack_groups:
      - hazzuk_core
      - hazzuk_extra
      - hazzuk_media
    ```

## Copyright & License

Copyright © 2026 hazzuk. Licensed AGPL-3.0-only.
