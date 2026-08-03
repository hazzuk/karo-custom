---
icon: lucide/layers-2
status: required
---

# hazzuk_core

Essential services required by every other stack.

```yaml { hl_lines="2" .no-copy }
karo_compose_stack_groups:
  - hazzuk_core
```

!!! warning

    It is critical to set up all core stacks first, as they are relied upon by other stack groups and karo-custom repos.
