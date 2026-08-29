<!--
SPDX-FileCopyrightText: © 2026 hazzuk

SPDX-License-Identifier: AGPL-3.0-only
-->

<div align="center" markdown>

# hazzuk/karo-custom

**Custom [karo-stack](https://docs.karolabs.dev/) files**

[![Latest release](https://img.shields.io/github/v/release/hazzuk/karo-custom?display_name=tag&cacheSeconds=7200&label=latest)](https://github.com/hazzuk/karo-custom/releases)
[![License](https://img.shields.io/badge/license-AGPL--3.0-B461B3)](https://github.com/hazzuk/karo-custom/blob/main/LICENSE)
[![Hits-of-Code](https://hitsofcode.com/github/hazzuk/karo-custom)](https://hitsofcode.com/github/hazzuk/karo-custom/view)

[![Developed by Humans, Not by AI](https://hazzuk.github.io/assets/not-by-ai/dev.svg)](https://notbyai.fyi/)

</div>

---

> This is the official [karo-custom](https://docs.karolabs.dev/custom/) repo, maintained by the creator of the karo-stack.

1.  Get this custom repo

    ``` sh
    just custom get hazzuk
    ```

2.  Add these variables

    ``` sh
    just vault homeserver
    ```

    <!-- editorconfig-checker-disable -->

    ``` yaml { title="Ansible vault" }
    karo_compose_stack_groups:
      - hazzuk_core
      - hazzuk_extra
      - hazzuk_media
    ```

    <!-- editorconfig-checker-enable -->

## Copyright & License

Copyright © hazzuk. Licensed AGPL-3.0-only.
