DHCP Dash Cookbook
===================
This cookbook deploys the DHCP DASH

Warning: Experimental do not use in production

Requirements
------------

#### cookbooks
- `rbenv`
- `git`

Attributes
----------

#### dhcp-dash::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
</table>

Recipes
-------
#### default
Pretty much does everything for you!

Usage
-----
#### dhcp-dash::default
Just include `its_django` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[its_django]"
  ]
}
```

Contributing
------------

1. Create a named feature branch (like `add_component_x`)
2. Write you change
3. Write tests for your change (if applicable)
4. Run the tests, ensuring they all pass
5. Submit a Pull Request using Github

License and Authors
-------------------
Authors:

- `Victoria Blessing` - vblessing@arch.tamu.edu
- `Ben Alexander` - balexander@arch.tamu.edu
