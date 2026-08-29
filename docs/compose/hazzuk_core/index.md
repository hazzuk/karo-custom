---
# SPDX-FileCopyrightText: © 2026 hazzuk
#
# SPDX-License-Identifier: AGPL-3.0-only

icon: lucide/layers-2
status: required
---

# hazzuk_core

Essential services required by every other stack.

<!-- editorconfig-checker-disable -->

``` yaml { .no-copy hl_lines="2" }
karo_compose_stack_groups:
  - hazzuk_core
```

<!-- editorconfig-checker-enable -->

!!! warning

    It is critical to set up all core stacks first, as they are relied upon by other stack groups and karo-custom repos.
