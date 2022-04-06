win_ansible_module
=========

An example of how to create an ansible module.

Requirements
------------

python3

Role Variables
--------------

var1
var2
complex_var:
  - var3:
    - var4: "data1"
      var5: "data2"

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: win_ansible_module, variables }

License
-------

BSD

Author Information
------------------

https://github.com/DevManTillis
