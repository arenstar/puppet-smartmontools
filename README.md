puppet-smartmontools
====================

Manage those montools - smart

[![Build Status](https://secure.travis-ci.org/arenstar/puppet-smartmontools.png)](http://travis-ci.org/arenstar/puppet-smartmontools)

Overview
--------

Install and management smartmontools.

Usage
-----

Example:

Basic enabling of smartmontools :

    include smartmontools

Advanced example, using only hieradata :

    classes:
      - smartmontools

    smartmontools_mail: mail@yourcompany.com
