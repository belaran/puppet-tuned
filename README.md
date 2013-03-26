Tuned Module for Puppet
=======================

Tuned is an optimisation tool that allows to apply a set of tuning settings,
based on a generic profile such as:
- virtual-guest
- latency-performance
- powersave
- balanced
- throughput-performance
- virtual-host

This module allow to used tuned, through Puppet. Of course, tuned being a linux
tool, no implementation is provided for Windows.

Sample usage:

tuned::tune { 'tuning-network-for-latency-perf':
  profile => 'latency-performance',
}

or a shorter approach, using the default name:

tuned::tune { 'powersave': }
